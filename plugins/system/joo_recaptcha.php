<?php
/**
* Joo ReCaptcha Plugin.
* @version 1.5.7
* @package Joo ReCaptcha Plugin 07.02.2012
* @author CAMMARO
* @copyright (C) 2010 by StefySoft.com
* @url http://joomla.stefysoft.com
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
**/

defined( '_JEXEC') or ( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

jimport('joomla.plugin.plugin');

class plgSystemJoo_Recaptcha extends JPlugin{
	var $errror;
	function plgSystemJoo_Recaptcha( &$subject, $config)
	{
		parent::__construct($subject, $config);
		
		if ($this->checkplugins()) return;
		require_once(dirname(__FILE__).'/joo_recaptcha/joo_api.php');
		JooReCaptcha::setKeys(
			$this->params->get('public', JooRecaptcha::get('publicKey')),
			$this->params->get('private', JooRecaptcha::get('privateKey'))
		);
		if ($this->params->get('ajax') == 1)
			JooReCaptcha::setAjaxMode(true);
		else 
			JooReCaptcha::setAjaxMode(false);
		$theme = $this->_get_heme_name();
		JooReCaptcha::setTheme($theme);
	}
	
	function checkplugins()
	{
		if (JPluginHelper::isEnabled( 'system', 'joo_recaptcha_pro' ))
			return true;
		else
			return false;
	}
	
	function processPage()
	{
		$option = JRequest::getCmd('option');
		$view = JRequest::getCmd('view');
		$task = JRequest::getCmd('task');
		
		if( $this->params->get('addToContact',1) == 1 &&
		   $option == 'com_contact' &&
		   $task == 'submit'
		){
			return true;
		}
		if( $this->params->get('addToSubmitLink',1) == 1 &&
		   $option == 'com_weblinks' &&
		   $view == "weblink" &&
		   $task == 'submit'
		){
			
			return true;
		}
		if( $this->params->get('addToUserRegistration',1) == 1 &&
		   $option == 'com_user' &&
		   $task == 'register_save'		   
		){
			
			return true;
		}
		if( $this->params->get('addToFUser',1) == 1 &&
		   $option == 'com_user' &&
		   $task == 'remindusername'
		){
			
			return true;
		}
		if( $this->params->get('addToFPass',1) == 1 &&
		   $option == 'com_user' &&
		   $task == 'requestreset'
		){
			
			return true;
		}
		if( $this->params->get('addToLogin',1) == 1 &&
		   $option == 'com_user' &&
		   $task == 'login'
		){
			
			return true;
		}
		return false;
	}
	
	function addFormToBuffer()
	{
		$option = JRequest::getCmd('option');
		$view = JRequest::getCmd('view');
		$task = JRequest::getCmd('task');
		$Itemid = intval(JRequest::getCmd('Itemid'));
		if( $this->params->get('addToContact',1) == 1 && $option == 'com_contact' && $view == 'contact' )
		{
			return true;
		}
		if( $this->params->get('addToSubmitLink',1) == 1 && $option == 'com_weblinks' && $view == 'weblink' )
		{	
			return true;
		}
		if( $this->params->get('addToUserRegistration',1) == 1 && $option == 'com_user' && $view == 'register')
		{
			return true;
		}
		if( $this->params->get('addToFUser',1) == 1 && $option == 'com_user' && $view == 'remind'){
			
			return true;
		}
		if( $this->params->get('addToFPass',1) == 1 && $option == 'com_user' && $view == 'reset' && !JRequest::getCmd('layout')){
			
			return true;
		}
		if( $this->params->get('addToLogin',1) == 1 && $option == 'com_user' && $view == 'login'){
			
			return true;
		}
		if( $this->params->get('addToUserRegistration',1) == 1 && $option == 'com_user' && $task == 'register')
		{
			header ('Location: '.JRoute::_("/index.php?option=com_user&view=register&Itemid=".$Itemid));
		}
		if( $this->params->get('addToContact',1) == 1 && $option == 'com_contact' && $task == 'view' && intval(JRequest::getCmd('contact_id')) > 0 )
		{
			$contact_id = intval(JRequest::getCmd('contact_id'));
			header ('Location: '.JRoute::_("/index.php?option=com_contact&view=contact&id=".$contact_id.'&Itemid='.$Itemid));
		}		
		return false;
	}
	
	function onAfterInitialise()
	{
		JooReCaptcha::process();
	}
	
	function onAfterRoute()
	{
		global $mainframe;
		if( !$this->processPage() ){
			return;
		}
		$submited = JooReCaptcha::get('submitted');
		$success = JooReCaptcha::get('success');
		if( !$success ){
			$mainframe->enqueueMessage('ReCAPTCHA Text Error.', 'error');
			$option = JRequest::getCmd('option');
			$view = JRequest::getCmd('view');
			$task = JRequest::getCmd('task');
			if ($option == 'com_contact')
				JRequest::setVar('task','display');
			if ($option == 'com_weblinks')
				JRequest::setVar('task','display');
			if ($option == 'com_user' && $task == 'register_save')
			{
				JRequest::setVar('task','0');
				JRequest::setVar('view','register');
			}
			if ($option == 'com_user' && ($view == 'remind' || $task == 'remindusername'))
			{
				JRequest::setVar('view','remind');
				JRequest::setVar('task','0');
			}
			if ($option == 'com_user' && ($view == 'reset' || $task == 'requestreset'))
			{
				JRequest::setVar('view','reset');
				JRequest::setVar('task','0');
			}
			if ($option == 'com_user' && $task == 'login')
			{
				JRequest::setVar('view','login');
				JRequest::setVar('task','0');
			}
		}
	}
	
	function onAfterDispatch()
	{
		if( !$this->addFormToBuffer() ){
			return;
		}
		$document =& JFactory::getDocument();
		$buffer = $document->getBuffer('component');
		
		//add recaptcha before the submit button
		$re = "/<(button|input)(.*type=['\"](submit|button)['\"].*)?>/i";
		$buffer = preg_replace_callback($re, array(&$this,'_addFormCallback'), $buffer);
		
		// seting values...
		$inputsRe = "/<input(.*name=(['\"])(.+?)\\2.*)?>/i";
		$inputsReLnk = "/<input(.*name=['\"].*.['\"].*)?>/i";
		$textareaRe = "/<textarea(.*name=(['\"])text\\2.*)?>(.*)?<\/textarea>/i";
		
		$buffer = preg_replace_callback($inputsRe, array(&$this,'_addInputValues'), $buffer);
		$buffer = preg_replace_callback($textareaRe, array(&$this,'_addTextareaValue'), $buffer);
		
		$document->setBuffer($buffer,'component');
	}
	
	function _addFormCallback($matches)
	{
		return "\n<!-- ReCaptcha Plugin Start by Joomla.StefySoft.com -->\n".JooReCaptcha::get('html').'<br />'.$matches[0]."\n<!-- ReCaptcha Plugin End by Joomla.StefySoft.com -->\n";
	}
	
	function _get_heme_name()
	{
		switch ($this->params->get('template'))
		{
			case '0':
				return 'red';
				break;
			case '1':
				return 'white';
				break;
			case '2':
				return 'blackglass';
				break;
			case '3':
				return 'clean';
				break;
		}
	}
	
	function _addInputValues($matches)
	{
		switch($matches[3]){
			case 'name':
			case 'email':
			case 'subject':
			case 'jform[url]':
			case 'jform[title]':
			case 'password2':
			case 'password':
			case 'username':
			/*case 'task':
			case 'id':
			case 'gid':*/
				$re = "/value=(['\"])(.*?)\\1/i";
				$this->_replacementValue = JRequest::getVar($matches[3]);
				$matches[0] = preg_replace_callback($re, array(&$this, '_replaceValue'), $matches[0]);
				break;
		}
		return $matches[0];
	}
	
	function _addTextareaValue($matches)
	{
		$attrs = $matches[1];
		$val = JRequest::getString('text');
		return "<textarea$attrs>$val</textarea>";
	}
	
	function _replaceValue($matches)
	{
		$val = addslashes($this->_replacementValue);
		return "value='$val'";
	}
	
}
