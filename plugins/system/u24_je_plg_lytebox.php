<?php
//-----------------------------------------------------------------------------------------------
/**
 * U24 Lytebox for Joomla. Joomla Extension by Unison24. 
 *
 * @author 		Holyfield Studios 	: 	January 05 2006
 * @package 	U24.JE.Lytebox
 * @version 	1.0.0.0
 * @link http://je.unison24.com
 * @license GPL http://je.unison24.com/licenses/general-public-license
 */
//-----------------------------------------------------------------------------------------------
/**
 *	Check that library not called directly, but only through another script
 */
if (realpath ( __FILE__ ) == realpath ( (isset ( $_SERVER ['PATH_TRANSLATED'] ) ? $_SERVER ['PATH_TRANSLATED'] : $_SERVER ['ORIG_PATH_TRANSLATED']) )) {
	$path_parts = pathinfo ( __FILE__ );
	trigger_error ( 'Direct call of file' . $path_parts ['basename'], E_USER_ERROR );
}
//-----------------------------------------------------------------------------------------------
/**
 * Path of U24 Lytebox for Joomla.
 * Validates that plugin is not allready loaded.
 * This constant holds the full path and filename of the plugin file.
 */
if (defined ( '__U24JE_Lytebox' ))
	return;
define ( '__U24JE_Lytebox', __FILE__ );
define ( '__U24JE_Lytebox_Path', dirname ( __U24JE_Lytebox ) );
define ( '__U24JE_Lytebox_ClassPath', __U24JE_Lytebox_Path . DIRECTORY_SEPARATOR . 'u24_je_plg_lytebox-class.php' );
define ( '__U24JE_Lytebox_J10', __U24JE_Lytebox_Path . DIRECTORY_SEPARATOR . 'u24_je_plg_lytebox-j10.php' );
define ( '__U24JE_Lytebox_J15', __U24JE_Lytebox_Path . DIRECTORY_SEPARATOR . 'u24_je_plg_lytebox-j15.php' );
define ( '__U24JE_Lytebox_JSVerPath', __U24JE_Lytebox_Path . DIRECTORY_SEPARATOR . 'u24' . DIRECTORY_SEPARATOR . 'lytebox' );
/**
 * Determines installed Joomla version.
 * @return boolean Returns TRUE if Joomla version is 1.5.0 or newer, otherwise FALSE
 * @package U24.JE.Lytebox
 */
function u24_je_lb_is_joomla_old() {
	if (! defined ( '__U24JE_Lytebox_JS_is_old' )) {
		$version = class_exists ( 'JVersion' ) ? new JVersion ( ) : new joomlaVersion ( );
		$short_version = $version->getShortVersion ();
		define ( '__U24JE_Lytebox_JS_is_old', version_compare ( $short_version, "1.5.0", "<" ) );
	}
	return __U24JE_Lytebox_JS_is_old;
}
function u24_je_plg_get_database() {
	if (u24_je_lb_is_joomla_old ()) {
		global $database;
		return $database;
	} else {
		return JFactory::getDBO ();
	}

}
function u24_je_plg_lytebox_id() {
	$database = &u24_je_plg_get_database ();
	$table_name = (u24_je_lb_is_joomla_old ()) ? '#__mambots' : '#__plugins';
	$query = "SELECT id FROM $table_name WHERE element = 'u24_je_plg_lytebox' AND folder = 'system'";
	$database->setQuery ( $query );
	$id = $database->loadResult ();
	return $id;
}
define ( '__U24JE_Lytebox_DBID', u24_je_plg_lytebox_id () );
/**
 * Include Lytebox Class file.
 */

require_once __U24JE_Lytebox_ClassPath;
if (u24_je_lb_is_joomla_old ()) {
	define ( '__U24JE_Lytebox_SiteRoot', $GLOBALS ['mosConfig_live_site'] );
	define ( '__U24JE_Lytebox_Root', __U24JE_Lytebox_SiteRoot . '/mambots/system/u24/lytebox/' );
	require_once __U24JE_Lytebox_J10;
} else {
	define ( '__U24JE_Lytebox_SiteRoot', JURI::root () );
	define ( '__U24JE_Lytebox_Root', __U24JE_Lytebox_SiteRoot . '/plugins/system/u24/lytebox/' );
	require_once __U24JE_Lytebox_J15;
}

?>