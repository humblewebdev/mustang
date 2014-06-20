<?php
/**
* @package ZT Location Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport('joomla.application.component.model');

class ZtautolinksModelKwordsImport extends JModel
{
	var $_data;
	/**
	 * Constructor that retrieves the ID from the request
	 *
	 * @access	public
	 * @return	void
	 */
	function __construct()
	{
		parent::__construct();
	}

	function store($data)
	{
		$row =& JTable::getInstance('ztautolink', 'Table');

		// Bind the form fields to the table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		
		// Store the web link table to the database
		if (!$row->store()) {
			$this->setError( $row->getErrorMsg() );
			return false;
		}

		return true;
	}
	
	function _buildQuery()
	{
		$catid		= JRequest::getVar('catid' );
		$url_type		= JRequest::getVar('url_type' );
		$target		= JRequest::getVar('target' );
		$priority_from		= JRequest::getVar('priority_from' );
		$priority_to		= JRequest::getVar('priority_to' );
		//var_dump(intval($priority_from)); die();
		if($catid =='2'){
			$where = ' WHERE catid <'.$catid;
		}
		else{
			$where = ' WHERE catid ='.$catid;
		}
		if($url_type !='2')
			$where .= ' AND url_type ='.$url_type;
		if($target !='2')
			$where .= ' AND target ='.$target;
		if($priority_from !='')	
			$where .= ' AND priority >='.intval($priority_from);
		if($priority_to !='')
			$where .= ' AND priority <='.intval($priority_to);
		$query = ' SELECT * '
			. ' FROM #__ztautolink '
			. $where
		;
		return $query;
	}

	function export()
	{
		$db =& JFactory::getDBO();
		
		
		
		$query = $this->_buildQuery();
		$db->setQuery($query);
		$this->_data = $db->loadRowList();
		return $this->_data;
	} 
	
}
?>
