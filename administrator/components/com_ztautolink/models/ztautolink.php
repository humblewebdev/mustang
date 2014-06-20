<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.application.component.model');

class ZtautolinksModelZtautolink extends JModel
{
	/**
	 * Constructor that retrieves the ID from the request
	 *
	 * @access	public
	 * @return	void
	 */
	/** keyword Id */ 
	var $_id = null;
	 
	/** @var object JTable object */
	var $_table = null;

	/** @var object JTable object */
	var $_url = null;
	
	function __construct()
	{
		parent::__construct();
		$url = JRequest::getVar('url', array(), '', 'array');
		if (isset($url['option']))
		{
			$this->_url = 'index.php?option='.$url['option'];
			unset($url['option']);
			if (count($url)) {
				foreach ($url as $k => $v)
				{
					$this->_url .= '&'.$k.'='.$v;
				}
			}
		}
		
		$this->setId();
	}

	/**
	 * Method to set the Ztautolink identifier
	 *
	 * @access	public
	 * @param	int Ztautolink identifier
	 * @return	void
	 */
	function setId()
	{
		$array = JRequest::getVar('cid', array(0), '', 'array');
		$this->_id = (int) $array[0];

		if (!$this->_id) {
		$this->_id = JRequest::getInt('id', 0);
		}
	}

	/**
	 * Method to get a Ztautolink
	 * @return object with data
	 */
	function &getData()
	{
		// Load the data
		if (empty( $this->_data )) {
			$query = ' SELECT * FROM #__ztautolink '.
					'  WHERE id = '.$this->_id;
			$this->_db->setQuery( $query );
			$this->_data = $this->_db->loadObject();
		}
		if (!$this->_data) {
			$this->_data = new stdClass();
			$this->_data->id = 0;
			$this->_data->word = null;
		}
		
		return $this->_data;
	}
	
	function &_getTable()
	{
		if ($this->_table == null) {
			$this->_table =& JTable::getInstance('ztautolink', 'Table');
		}
		return $this->_table;
	}
	
	function &_getStateXML()
	{
		static $xml;

		if (isset($xml)) {
			return $xml;
		}
		$xml = null;
		$xmlpath = null;
		$item 	= &$this->getItem();
		//$item->type = 'component';
		
		switch ($item->type)
		{
			/* 
			case 'separator':
				$xmlpath = JPATH_BASE.DS.'components'.DS.'com_menus'.DS.'models'.DS.'metadata'.DS.'separator.xml';
				break;
			case 'url':
				$xmlpath = JPATH_BASE.DS.'components'.DS.'com_menus'.DS.'models'.DS.'metadata'.DS.'url.xml';
				break;
			case 'menulink':
				$xmlpath = JPATH_BASE.DS.'components'.DS.'com_menus'.DS.'models'.DS.'metadata'.DS.'menulink.xml';
				break;
				 */
			case 'component':
			default:
				if (isset($item->linkparts['view']))
				{
					// View is set... so we konw to look in view file
					if (isset($item->linkparts['layout'])) {
						$layout = $item->linkparts['layout'];
					} else {
						$layout = 'default';
					}
					$lpath = JPATH_ROOT.DS.'components'.DS.$item->linkparts['option'].DS.'views'.DS.$item->linkparts['view'].DS.'tmpl'.DS.$layout.'.xml';
					$vpath = JPATH_ROOT.DS.'components'.DS.$item->linkparts['option'].DS.'views'.DS.$item->linkparts['view'].DS.'metadata.xml';
					if (file_exists($lpath)) {
						$xmlpath = $lpath;
					} elseif (file_exists($vpath)) {
						$xmlpath = $vpath;
					}
				}
				if (!$xmlpath && isset($item->linkparts['option'])) {
					$xmlpath = JPATH_ROOT.DS.'components'.DS.$item->linkparts['option'].DS.'metadata.xml';
					if(!file_exists($xmlpath)) {
						$xmlpath = JApplicationHelper::getPath('com_xml', $item->linkparts['option']);
					}
				}
				break;
		}

		if (file_exists($xmlpath))
		{
			$xml =& JFactory::getXMLParser('Simple');
			if ($xml->loadFile($xmlpath)) {
				$this->_xml = &$xml;
				$document =& $xml->document;

				/*
				 * HANDLE NO OPTION CASE
				 */
				$menus =& $document->getElementByPath('menu');
				if (is_a($menus, 'JSimpleXMLElement') && $menus->attributes('options') == 'none') {
					$xml =& $menus->getElementByPath('state');
				} else {
					$xml =& $document->getElementByPath('state');
				}

				// Handle error case... path doesn't exist
				if (!is_a($xml, 'JSimpleXMLElement')) {
					return $document;
				}

				/*
				 * HANDLE A SWITCH IF IT EXISTS
				 */
				if ($switch = $xml->attributes('switch'))
				{
					$default = $xml->attributes('default');
					// Handle switch
					$switchVal = (isset($item->linkparts[$switch]))? $item->linkparts[$switch] : 'default';
					$found = false;

					foreach ($xml->children() as $child) {
						if ($child->name() == $switchVal) {
							$xml =& $child;
							$found = true;
							break;
						}
					}

					if (!$found) {
						foreach ($xml->children() as $child) {
							if ($child->name() == $default) {
								$xml =& $child;
								break;
							}
						}
					}
				}

				/*
				 * HANDLE INCLUDED PARAMS
				 */
				$children = $xml->children();
				if (count($children) == 1)
				{
					if ($children[0]->name() == 'include') {
						$ret =& $this->_getIncludedParams($children[0]);
						if ($ret) {
							$xml =& $ret;
						}
					}
				}

				if ($switch = $xml->attributes('switch'))
				{
					$default = $xml->attributes('default');
					// Handle switch
					$switchVal = ($item->linkparts[$switch])? $item->linkparts[$switch] : 'default';
					$found = false;

					foreach ($xml->children() as $child) {
						if ($child->name() == $switchVal) {
							$xml =& $child;
							$found = true;
							break;
						}
					}

					if (!$found) {
						foreach ($xml->children() as $child) {
							if ($child->name() == $default) {
								$xml =& $child;
								break;
							}
						}
					}
				}
			}
		}
		return $xml;
	}
	
	function &getItem()
	{
		static $item;
		if (isset($item)) {
			return $item;
		}

		$table =& $this->_getTable();
		
		// Load the current item if it has been defined
		$edit	= JRequest::getVar('edit',true);
		$cid = JRequest::getVar( 'cid', array(0), '', 'array' );
		JArrayHelper::toInteger($cid, array(0));
		if ($edit) {
			$table->load($cid[0]);
		}

		// Override the current item's type field if defined in the request
		if ($type = JRequest::getString('type')) {
			$table->type = $type;
		}
		// Override the current item's menutype field if defined in the request
		if ($menutype = JRequest::getVar('menutype', '', '', 'menutype')) {
			$table->menutype = $menutype;
		}
		//$table->type = 'component';
		
		switch ($table->type)
		{
		/* 
			case 'separator':
				$table->link = null;
				$table->componentid = 0;
				break;
			case 'url':
				$table->componentid = 0;
				break;
			case 'menulink':
				$table->componentid = 0;
				break;
		*/
				 
			case 'component':
				// Override the current item's link field if defined in the request
				if (!is_null($this->_url)) {
					$table->url = $this->_url;
				}
				
				$url = str_replace('index.php?', '', $table->url);
				$url = str_replace('&amp;', '&', $url);
				$table->linkparts = null;
				if(strpos($url, '&amp;') !== false)
				{
				   $url = str_replace('&amp;','&',$url);
				}

				parse_str($url, $table->linkparts);

				$db = &$this->getDBO();
				if ($component = @$table->linkparts['option']) {
					$query = 'SELECT `id`' .
							' FROM `#__components`' .
							' WHERE `link` <> \'\'' .
							' AND `parent` = 0' .
							' AND `option` = "'.$db->getEscaped($component).'"';
					$db->setQuery( $query );
					//$table->componentid = $db->loadResult();
				}
				break;
		}

		$item = $table;
		return $item;
	}
	
	function &getUrlParams()
	{
		// Get the state parameters
		$item	=& $this->getItem();
		$params	= new JParameter('');
//var_dump($this->_getStateXML()); die();
		if ($state =& $this->_getStateXML())
		{
			if (is_a($state, 'JSimpleXMLElement'))
			{
				$sp =& $state->getElementByPath('url');
				$params->setXML($sp);
				if (isset($item->linkparts) && is_array($item->linkparts)) {
					$params->loadArray($item->linkparts);
				}
			}
		}
		return $params;
	}
	
	function &getStateParams()
	{
		// Get the state parameters
		$item	=& $this->getItem();
		$params	= new JParameter($item->params);

		if ($state =& $this->_getStateXML())
		{
			if (is_a($state, 'JSimpleXMLElement'))
			{
				$sp =& $state->getElementByPath('params');
				$params->setXML($sp);
			}
		}
		return $params;
	}
	
	function &getExpansion()
	{
		$item				= &$this->getItem();
		$return['option']	= JRequest::getCmd('expand');
		if ($return['option'])
		{
			require_once(JPATH_ADMINISTRATOR.DS.'components'.DS.'com_ztautolink'.DS.'classes'.DS.'ilink.php');
			$handler		= new iLink($return['option'], $item->id, '');
			$return['html'] = $handler->getTree();
			return $return;
		} else {
			$return['html'] = null;
		}
		return $return;
	}

	/**
	 * Method to store a record
	 *
	 * @access	public
	 * @return	boolean	True on success
	 */
	function store()
	{	
		$row	=& $this->getItem();
		$data = JRequest::get( 'post' );
		$post	= $data;
		
		// Bind the form fields to the ztautolink table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		
		if (isset($post['urlparams']) && is_array($post['urlparams']))
		{
			$pos = strpos( $row->url, '?' );
			if ($pos !== false)
			{
				$prefix = substr( $row->url, 0, $pos );
				$query	= substr( $row->url, $pos+1 );

				$temp = array();
				if(strpos($query, '&amp;') !== false) {
					$query = str_replace('&amp;', '&', $query);
				}
				parse_str( $query, $temp );
				$temp2 = array_merge( $temp, $post['urlparams'] );
				$temp3 = array();
				foreach ($temp2 as $k => $v)
				{
					if ( $k && strlen($v) )
					{
						$temp3[] = $k.'='.$v;
					}
				}
				$url = null;
				$row->url = $prefix . '?' . implode( '&', $temp3 );
			}
		}

		// Make sure the ztautolink record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the web link table to the database
		if (!$row->store()) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}

		return true;
	}

	/**
	 * Method to delete record(s)
	 *
	 * @access	public
	 * @return	boolean	True on success
	 */
	function delete()
	{
		$cids = JRequest::getVar( 'cid', array(0), 'post', 'array' );

		$row =& $this->getTable();

		if (count( $cids )) {
			foreach($cids as $cid) {
				if (!$row->delete( $cid )) {
					$this->setError( $row->getErrorMsg() );
					return false;
				}
			}
		}
		return true;
	}

}