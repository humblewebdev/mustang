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

class ZtautolinksViewKworddetector extends JView
{
	function display($tpl = null)
	{
		JToolBarHelper::title(   JText::_( 'ZtAutolink Manager' ), 'generic.png' );
		global $mainframe, $option;
		
		$search	= $mainframe->getUserStateFromRequest( $option.'search', 'search', '', 'string' );
		if (strpos($search, '"') !== false) {
			$search = str_replace(array('=', '<'), '', $search);
		}
		$search = JString::strtolower($search);
		
		$items		= & $this->get( 'Data');
		$total		= & $this->get( 'Total');
		$pagination = & $this->get( 'Pagination' );
		
		$this->assignRef('items',		$items);
		$this->assignRef('pagination',	$pagination);
		$this->assignRef('search',		$search);
		parent::display($tpl);
	}
}