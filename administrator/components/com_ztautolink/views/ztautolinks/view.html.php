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


class ZtautolinksViewZtautolinks extends JView
{
	
	function display($tpl = null)
	{
		JToolBarHelper::title(   JText::_( 'ZtAutolink Manager' ), 'generic.png' );
		JToolBarHelper::publishList();
		JToolBarHelper::unpublishList();
		JToolBarHelper::customX( 'copy', 'copy.png', 'copy_f2.png', 'Duplicate' );
		JToolBarHelper::deleteList();
		JToolBarHelper::editListX();
		JToolBarHelper::addNewX();
		
		global $mainframe, $option;
		
		$filter_order		= $mainframe->getUserStateFromRequest( $option.'filter_order',		'filter_order',	'id', 'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( $option.'filter_order_Dir',	'filter_order_Dir',	'',	'' );
		
		$search				= $mainframe->getUserStateFromRequest( $option.'search',			'search',			'',				'string' );
		if (strpos($search, '"') !== false) {
			$search = str_replace(array('=', '<'), '', $search);
		}
		$search = JString::strtolower($search);
		
		// sanitize $filter_order
		if (!in_array($filter_order, array('id', 'word', 'published', 'priority', 'url_type'))) {
			$filter_order = 'id';
		}

		if (!in_array(strtoupper($filter_order_Dir), array('ASC', 'DESC'))) {
			$filter_order_Dir = '';
		}
		
		// Get data from the model
		$items		= & $this->get( 'Data');
		$total		= & $this->get( 'Total');
		$pagination = & $this->get( 'Pagination' );
		
		// table ordering
		$lists['order_Dir'] = $filter_order_Dir;
		$lists['order'] = $filter_order;

		$this->assignRef('items',		$items);
		$this->assignRef('search',		$search);
		$this->assignRef('pagination',	$pagination);
		$this->assignRef('lists',		$lists);
		
		parent::display($tpl);
	}
}