<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class TableZtautolink extends JTable
{
	/**
	 * Primary Key
	 *
	 * @var int
	 */
	var $id = null;

	var $word = null;
	
	var $url = null;
	
	var $url_type = null;
	
	var $published = null;
	
	var $link_title = null;
	
	var $target = null;
	
	var $nofollow = null;
	
	var $priority = null;
	
	var $link_color = null;
	
	var $custom_css = null;
	
	var $limit = null;
	
	var $occurrence = null;
	
	var $catid = null;
	
	/**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
	function TableZtautolink(& $db) {
		parent::__construct('#__ztautolink', 'id', $db);
	}
}