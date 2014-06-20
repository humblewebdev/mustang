<?php
/**
 * @license GPL http://je.unison24.com/licenses/general-public-license
 */
jimport ( 'joomla.plugin.plugin' );
/**
 * Joomla 1.5 Bridge for Lytebox
 *
 */
class plgSystemu24_je_plg_lytebox extends JPlugin {
	
	/**
	 * U24JELytebox
	 *
	 * @var U24JELytebox
	 */
	private $plgLytebox;
	
	function plgSystemu24_je_plg_lytebox(& $subject, $config) {
		parent::__construct ( $subject, $config );
		//load the translation
		$this->loadLanguage ();
		$params = U24JELytebox::getFilledParamArray ( $this->params );
		$this->plgLytebox = new U24JELytebox ( $params );
	}
	
	function onAfterRender() {
		//Get XHTML for header
		$xhtml = $this->plgLytebox->getXHTML ();
		//Add XHTML header tags
		$this->addHeaderTags ( $xhtml );
		//Update JS File if needed
		if (isset ( $_SESSION ['u24_je_plg_lytebox_save_js'] )) {
			$this->plgLytebox->saveJSFile ();
			unset ( $_SESSION ['u24_je_plg_lytebox_save_js'] );
		}
	}
	
	function onAfterInitialise() {
		U24JELytebox::InitJSSave ();
	}
	
	function addHeaderTags($xhtml) {
		
		//CRLF for later usage
		$crlf = "\r\n";
		
		//Get page XHTML code from buffer
		$buffer = JResponse::getBody ();
		
		//Perform a global regular expression match for XHTML body closing tag
		$matches = array ();
		$match = preg_match_all ( '%</[\\s]*head[\\s]*>%', $buffer, $matches );
		
		//If matches founded then replace matches or just output error notice as XHTML comment
		if ($match) {
			//Remove duplicate values from array and reindex
			$matches = array_merge ( array_unique ( $matches [0] ) );
			//create array for replace search
			$replace = array ();
			//replace all body closing tags with new code with Google Script
			foreach ( $matches as $key => $value ) {
				$replace [$key] = $xhtml . $crlf . $value;
			}
			//create new output with Google Analytics Tracking Code
			$buffer = str_replace ( $matches, $replace, $buffer );
		} else {
			
			//create new output with error notice as XHTML comment
			$buffer = $buffer . $crlf . '<!-- U24 Lytebox Error: Couln´t find header closing tag -->';
		} //end if
		

		//replace current output with new one
		JResponse::setBody ( $buffer );
	}

}

?>