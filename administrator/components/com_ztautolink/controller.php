<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.application.component.controller');

$view	= JRequest::getVar( 'view', '', '', 'string', JREQUEST_ALLOWRAW );

if ($view == '' || $view == 'ztautolinks') {
	JSubMenuHelper::addEntry(JText::_('Keywords'), 'index.php?option=com_ztautolink&view=ztautolinks', true);
	JSubMenuHelper::addEntry(JText::_('Import/Export'), 'index.php?option=com_ztautolink&view=kwordsimport');
	//JSubMenuHelper::addEntry(JText::_('Keyword detector'), 'index.php?option=com_ztautolink&view=kworddetector');
	JSubMenuHelper::addEntry(JText::_('Plugin'), 'index.php?option=com_ztautolink&view=plugin');
	JSubMenuHelper::addEntry(JText::_('About'), 'index.php?option=com_ztautolink&view=about' );
}
if ($view == 'kwordsimport') {
	JSubMenuHelper::addEntry(JText::_('Keywords'), 'index.php?option=com_ztautolink&view=ztautolinks');
	JSubMenuHelper::addEntry(JText::_('Import/Export'), 'index.php?option=com_ztautolink&view=kwordsimport', true);
	//JSubMenuHelper::addEntry(JText::_('Keyword detector'), 'index.php?option=com_ztautolink&view=kworddetector');
	JSubMenuHelper::addEntry(JText::_('Plugin'), 'index.php?option=com_ztautolink&view=plugin');
	JSubMenuHelper::addEntry(JText::_('About'), 'index.php?option=com_ztautolink&view=about' );
}
if ($view == 'kworddetector') {
	JSubMenuHelper::addEntry(JText::_('Keywords'), 'index.php?option=com_ztautolink&view=ztautolinks');
	JSubMenuHelper::addEntry(JText::_('Import/Export'), 'index.php?option=com_ztautolink&view=kwordsimport');
	//JSubMenuHelper::addEntry(JText::_('Keyword detector'), 'index.php?option=com_ztautolink&view=kworddetector', true);
	JSubMenuHelper::addEntry(JText::_('Plugin'), 'index.php?option=com_ztautolink&view=plugin');
	JSubMenuHelper::addEntry(JText::_('About'), 'index.php?option=com_ztautolink&view=about');
}
if ($view == 'plugin') {
	JSubMenuHelper::addEntry(JText::_('Keywords'), 'index.php?option=com_ztautolink&view=ztautolinks');
	JSubMenuHelper::addEntry(JText::_('Import/Export'), 'index.php?option=com_ztautolink&view=kwordsimport');
	//JSubMenuHelper::addEntry(JText::_('Keyword detector'), 'index.php?option=com_ztautolink&view=kworddetector');
	JSubMenuHelper::addEntry(JText::_('Plugin'), 'index.php?option=com_ztautolink&view=plugin', true);
	JSubMenuHelper::addEntry(JText::_('About'), 'index.php?option=com_ztautolink&view=about' );
}
if ($view == 'about') {
	JSubMenuHelper::addEntry(JText::_('Keywords'), 'index.php?option=com_ztautolink&view=ztautolinks');
	JSubMenuHelper::addEntry(JText::_('Import/Export'), 'index.php?option=com_ztautolink&view=kwordsimport');
	//JSubMenuHelper::addEntry(JText::_('Keyword detector'), 'index.php?option=com_ztautolink&view=kworddetector');
	JSubMenuHelper::addEntry(JText::_('Plugin'), 'index.php?option=com_ztautolink&view=plugin');
	JSubMenuHelper::addEntry(JText::_('About'), 'index.php?option=com_ztautolink&view=about', true );
}

class ZtautolinksController extends JController
{
	function display()
	{
		parent::display();
	}	
}