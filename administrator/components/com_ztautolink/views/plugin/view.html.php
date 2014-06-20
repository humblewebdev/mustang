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

class ZtautolinksViewPlugin extends JView
{
	function display($tpl = null)
	{
		JToolBarHelper::title(   JText::_( 'ZtAutolink Manager' ), 'generic.png' );
		
		$db =& JFactory::getDBO();
		$query = ' SELECT * '
			. ' FROM #__plugins WHERE ((element = "zt_autolink") OR (element = "zt_autolink_system")) '
		;
		$db->setQuery( $query );
		$rows = $db->loadObjectList();
		$this->assignRef('items',		$rows);
		
		parent::display($tpl);

	}
}