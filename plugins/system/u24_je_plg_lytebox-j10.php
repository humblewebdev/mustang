<?php
/**
 * @license GPL http://je.unison24.com/licenses/general-public-license
 */
$_MAMBOTS->registerFunction ( 'onAfterStart', 'u24_je_lb_trigger' );
/**
 * Trigger for Joomla.
 *
 */
function u24_je_lb_trigger() {
	//Retrieve parameters
	$plgparams = u24_je_lb_get_parameters ();
	$params = U24JELytebox::getFilledParamArray ( $plgparams );
	$plgLytebox = new U24JELytebox ( $params );
	u24_je_lb_saveJS ( $plgLytebox );
	$xhtml = $plgLytebox->getXHTML ();
	//Acces to the mainframe
	$mainframe = &$GLOBALS ['mainframe'];
	//Add header tags
	$mainframe->addCustomHeadTag ( $xhtml );
}

/**
 * Retrieve plugin id from database
 * @return integer
 */
function u24_je_lb_get_id() {
	$database = &$GLOBALS ['database'];
	if (defined ( 'u24_je_lb_id' )) {
		return BOT_GOOGLE_ANALYTICS_ID;
	}
	$query = 'SELECT id FROM #__mambots WHERE element = \'u24_je_plg_lytebox\' AND folder = \'system\'';
	$database->setQuery ( $query );
	$id = $database->loadResult ();
	define ( 'u24_je_lb_id', $id );
	return u24_je_lb_id;
} //end function


/**
 * Retrieve plugin parameters object
 *
 * @return mosParameters
 */
function u24_je_lb_get_parameters() {
	$database = &$GLOBALS ['database'];
	$mambot = new mosMambot ( $database );
	$mambot->load ( u24_je_lb_get_id () );
	$mambotParams = new mosParameters ( $mambot->params );
	//Return result
	return $mambotParams;
} //end function


function u24_je_lb_saveJS($plgLytebox) {
	$md5 = md5 ( serialize ( $plgLytebox ) );
	if ($plgLytebox->isJSRenwTime () or ! u24_je_lb_cache_exist ( $md5 )) {
		u24_je_lb_save_cache ( $md5 );
		$plgLytebox->saveJSFile ();
	}
}

function u24_je_lb_save_cache($md5) {
	u24_je_lb_clear_md5cache ();
	$fname = u24_je_lb_get_cache_filename ( $md5 );
	file_put_contents ( $fname, $md5 );
}

function u24_je_lb_cache_exist($md5) {
	return file_exists ( u24_je_lb_get_cache_filename ( $md5 ) );
}

function u24_je_lb_get_cache_filename($md5) {
	return $GLOBALS ['mosConfig_cachepath'] . DIRECTORY_SEPARATOR . 'u24jely_' . $md5 . '.lycache';
}

function u24_je_lb_clear_md5cache() {
	$files = scandir ( $GLOBALS ['mosConfig_cachepath'] );
	foreach ( $files as $file ) {
		$path_parts = pathinfo ( $file );
		if ($path_parts ['extension'] == 'lycache') {
			unlink ( $GLOBALS ['mosConfig_cachepath'] . DIRECTORY_SEPARATOR . $file );
		}
	}
}

?>