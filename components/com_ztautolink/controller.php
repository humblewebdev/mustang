<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

jimport('joomla.application.component.controller');

class ZtautolinkController extends JController
{
	/**
	 * Method to display the view
	 *
	 * @access	public
	 */
	function display()
	{
		parent::display();
	}
	
	function redirect(){
		global $mainframe; // joomla 1.6 use $app instead of $mainframe
		jimport( 'joomla.application.application' );
		$url = base64_decode(JRequest::getVar('url'));
		$mainframe->redirect($url, $msg='', $msgType='message');
	}

}
?>
