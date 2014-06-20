<?php
/**
* Joo ReCaptcha Plugin.
* @version 1.5.2
* @package Joo JooReCaptcha Plugin 13.05.2011
* @author CAMMARO
* @copyright (C) 2010 by StefySoft.com
* @url http://joomla.stefysoft.com
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
**/
require_once(dirname(__FILE__).'/joo_recaptchalib.php');

class JooReCaptcha{
	
	var $_success;
	var $_error;
	var $_resp;
	var $_ajax = true;
	var $_ssl = false;
	var $_theme = 'red';
	var $_submitted = false;
	var $_processed = false;
	var $_publicKey = '6Lf2-QQAAAAAAC5kQM5ChJfvRP1jZNvOn8kE590h';
	var $_privateKey = '6Lf2-QQAAAAAAFcse8UtCXQ82wW5fWG9koEQAktv';
	
	function &getInstance()
	{
		static $instance;
		if( !isset($instance) ){
			$instance = new JooReCaptcha();
		}
		return $instance;
	}
	
	function get($key,$default='')
	{
		$inst =& JooReCaptcha::getInstance();
		return $inst->_get($key,$default);
	}
	
	function _get($key,$default='')
	{
		$key = '_'.$key;
		return isset($this->$key) ? $this->$key : $default;
	}
	
	function setKeys($public,$private)
	{
		$inst =& JooReCaptcha::getInstance();
		$inst->_set('publicKey',$public );
		$inst->_set('privateKey',$private);
	}
	
	function setAjaxMode($mode=true)
	{
		$inst =& JooReCaptcha::getInstance();
		$inst->_set('ajax', $mode);
	}
	
	function setTheme($mode=false)
	{
		$inst =& JooReCaptcha::getInstance();
		$inst->_set('theme', $mode);
	}
	
	function _set($key,$value)
	{
		$key = '_'.$key;
		$this->$key = $value;
	}
	
	function process()
	{
		$inst =& JooReCaptcha::getInstance();
		$inst->_process();
	}
	
	function _process()
	{
		
		if( $this->_processed ){
			return;
		}
		
		if (JRequest::getVar("recaptcha_challenge_field")) {
			$this->_submitted=true;
			$this->_resp = joo_recaptcha_check_answer (
				$this->_get('privateKey'),
				$_SERVER["REMOTE_ADDR"],
				JRequest::getVar("recaptcha_challenge_field"),
				JRequest::getVar("recaptcha_response_field")
			);
			$this->_success = $this->_resp->is_valid;
			if( !$this->_success ){
				$this->_error = $this->_resp->error;
			}
			
		}
		$this->_html = joo_recaptcha_get_html($this->_get('publicKey'), $this->_get('error'), $this->_ssl, $this->_ajax, $this->_theme );
		$this->_processed = true;
	}
	
}
?>