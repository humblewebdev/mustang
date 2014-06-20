<?php
/**
 * @license GPL http://je.unison24.com/licenses/general-public-license
 */
class U24JELytebox {
	
	public $lyversion = '3.22';
	public $useCustom = FALSE;
	public $updateInterval = 8760;
	
	/**
	 * Themes: grey (default), red, green, blue, gold
	 * @var string
	 */
	public $theme = 'grey';
	/**
	 * Controls whether or not Flash objects should be hidden
	 * @var boolean
	 */
	public $hideFlash = TRUE;
	/**
	 * Controls whether to show the outer grey (or theme) borders
	 * @var boolean
	 */
	public $outerBorder = FALSE;
	/**
	 * Controls the speed of the image resizing (1=slowest and 10=fastest)
	 * @var integer
	 */
	public $resizeSpeed = 8;
	/**
	 *  Higher opacity = darker overlay, lower opacity = lighter overlay
	 * @var integer
	 */
	public $maxOpacity = 80;
	/**
	 * 1 = "Prev/Next" buttons on top left and left (default), 2 = "<< prev | next >>" links next to image number
	 * @var integer
	 */
	public $navType = 1;
	/**
	 * Controls whether or not images should be resized if larger than the browser window dimensions
	 *
	 * @var boolean
	 */
	public $autoResize = TRUE;
	/**
	 * Controls whether or not "animate" Lytebox, i.e. resize transition between images, fade in/out effects, etc.
	 * @var boolean
	 */
	public $doAnimations = TRUE;
	/**
	 * If you adjust the padding in the CSS, you will need to update this publiciable -- otherwise, leave this alone...
	 * @var integer
	 */
	public $borderSize = 12;
	
	/**
	 * Change value (milliseconds) to increase/decrease the time between "slides" (10000 = 10 seconds)
	 * @var integer
	 */
	public $slideInterval = 4000;
	/**
	 * TRUE to display Next/Prev buttons/text during slideshow, FALSE to hide
	 * @var boolean
	 */
	public $showNavigation = TRUE;
	/**
	 * TRUE to display the Close button, FALSE to hide
	 * @var boolean
	 */
	public $showClose = TRUE;
	/**
	 * TRUE to display image details (caption, count), FALSE to hide
	 * @var boolean
	 */
	public $showDetails = TRUE;
	/**
	 * TRUE to display pause/play buttons next to close button, FALSE to hide
	 * @var boolean
	 */
	public $showPlayPause = TRUE;
	/**
	 * TRUE to automatically close Lytebox after the last image is reached, FALSE to keep open
	 * @var boolean
	 */
	public $autoEnd = TRUE;
	/**
	 * TRUE to pause the slideshow when the "Next" button is clicked
	 * @var boolean
	 */
	public $pauseOnNextClick = FALSE;
	/**
	 * TRUE to pause the slideshow when the "Prev" button is clicked
	 * @var boolean
	 */
	public $pauseOnPrevClick = TRUE;
	
	/**
	 * Class constructor
	 * @param unknown_type $params
	 * @return U24JELytebox
	 */
	public function __construct($params = NULL) {
		//If parameters array is given
		if (is_array ( $params )) {
			//Validate given parameters against object variables
			$lyvars = new U24JELytebox ( );
			foreach ( $lyvars as $name => $value ) {
				if (array_key_exists ( $name, $params )) {
					//Validate parameter type, do not allow unallowed type
					if (gettype ( $value ) == gettype ( $params [$name] )) {
						if (is_string ( $value )) {
							if ($name == 'lyversion') {
								$vpath = __U24JE_Lytebox_JSVerPath . DIRECTORY_SEPARATOR . $params [$name];
								if (! is_dir ( $vpath )) {
									$params [$name] = $value;
								}
							}
							$params [$name] = trim ( $params [$name] );
						}
						$this->$name = $params [$name];
					} else {
						if (is_bool ( $value )) {
							$this->$name = ( bool ) $params [$name];
						}
						if (is_int ( $value )) {
							$this->$name = ( int ) $params [$name];
						}
					}
				}
			}
		}
	} //end function
	

	/**
	 * Returns an array containing Lytebox configuration variables width default values.
	 * @return array
	 */
	public static function getLyteboxVars() {
		$result = array ();
		$lyvars = new U24JELytebox ( );
		foreach ( $lyvars as $name => $value ) {
			$result [$name] = $value;
		}
		return $result;
	} //end function
	

	public function saveJSFile() {
		$js = $this->getNewJS ();
		$vpath = __U24JE_Lytebox_JSVerPath . DIRECTORY_SEPARATOR . $this->lyversion . DIRECTORY_SEPARATOR . 'lytebox.js';
		file_put_contents ( $vpath, $js );
	}
	
	public function getJSTime() {
		;
	}
	
	private function readJSFile() {
		$vpath = __U24JE_Lytebox_JSVerPath . DIRECTORY_SEPARATOR . $this->lyversion . DIRECTORY_SEPARATOR . 'lytebox.original.js';
		$js = file_get_contents ( $vpath );
		$ex1 = explode ( '/*** Start Global Configuration ***/', $js );
		$ex2 = explode ( '/*** End Slideshow Configuration ***/', $ex1 [1] );
		return array ($ex1 [0], $ex2 [1] );
	}
	
	private function getNewJS() {
		$arr = $this->readJSFile ();
		$str = "\n\t// " . date ( DATE_RFC822 ) . "\n";
		foreach ( $this as $name => $value ) {
			$str .= "\tthis." . $name . ' = ' . $this->getJSValueString ( $value ) . ";\n";
		}
		return $arr [0] . $str . $arr [1];
	}
	
	private function getJSValueString($value) {
		if (is_string ( $value )) {
			return '"' . $value . '"';
		}
		if (is_bool ( $value )) {
			return ($value) ? 'true' : 'false';
		}
		return strval ( $value );
	}
	
	public static function getFilledParamArray(&$params) {
		$plist = U24JELytebox::getLyteboxVars ();
		foreach ( $plist as $name => $value ) {
			$plist [$name] = $params->get ( $name, $value );
		}
		return $plist;
	}
	
	public function getXHTML() {
		$result = "\n" . '<!-- U24 Lytebox Header Begin -->';
		if (! $this->useCustom) {
			$result .= "\n" . $this->getJSXHTMLOriginal ();
		} else {
			$result .= "\n" . $this->getJSXHTMLCustom ();
		}
		$result .= "\n" . $this->getCSSXHTML ();
		$result .= "\n" . '<!-- U24 Lytebox Header End -->';
		return $result;
	}
	
	private function getJSXHTMLOriginal() {
		//Return XHTML code
		$url = __U24JE_Lytebox_Root . $this->lyversion . '/';
		return '<script type="text/javascript" language="javascript" src="' . $url . 'lytebox.original.js"></script>';
	}
	
	private function getJSXHTMLCustom() {
		//Generate new JS File if needed
		if ($this->useCustom == TRUE and $this->updateInterval > 0) {
			if ($this->isJSRenwTime ()) {
				$this->saveJSFile ();
			}
		}
		//Return XHTML code
		$url = __U24JE_Lytebox_Root . $this->lyversion . '/';
		return '<script type="text/javascript" language="javascript" src="' . $url . 'lytebox.js"></script>';
	}
	
	public function isJSRenwTime() {
		$vpath = __U24JE_Lytebox_JSVerPath . DIRECTORY_SEPARATOR . $this->lyversion . DIRECTORY_SEPARATOR . 'lytebox.js';
		$interval = (time () - filemtime ( $vpath )) / 60 / 60;
		return ($interval > $this->updateInterval) ? TRUE : FALSE;
	}
	
	public function getCSSXHTML() {
		//Return XHTML code
		$url = __U24JE_Lytebox_Root . $this->lyversion . '/';
		return '<link rel="stylesheet" href="' . $url . 'lytebox.css" type="text/css" media="screen" />';
	}
	
	public static function InitJSSave() {
		$result = FALSE;
		//If user is requested the plugin setting change then store not to rewrite JS file
		if (isset ( $_POST ['option'] ) and isset ( $_POST ['task'] ) and isset ( $_POST ['id'] ) and isset ( $_POST ['element'] )) {
			if ($_POST ['option'] == 'com_plugins' and $_POST ['element'] == 'u24_je_plg_lytebox') {
				if ($_POST ['task'] == 'save' or $_POST ['task'] == 'apply') {
					$_SESSION ['u24_je_plg_lytebox_save_js'] = TRUE;
					$result = TRUE;
				}
			}
		}
		return $result;
	} //end function InitJSSave()

}

?>