<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.application.component.view' );

class ZtautolinksViewAbout extends JView
{
	function display($tpl = null)
	{
		JToolBarHelper::title(   JText::_( 'ZtAutolink Manager' ), 'generic.png' );
		parent::display($tpl);
	}
}