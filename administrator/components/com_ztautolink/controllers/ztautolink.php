<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class ZtautolinksControllerZtautolink extends ZtautolinksController
{
	/**
	 * constructor (registers additional tasks to methods)
	 * @return void
	 */
	function __construct()
	{
		parent::__construct();

		// Register Extra tasks
		$this->registerTask( 'apply', 'save' );
		$this->registerTask( 'add'  , 	'edit' );
		$this->registerTask( 'unpublish',	'publish' );
	}

	/**
	 * display the edit form
	 * @return void
	 */
	function edit()
	{
		JRequest::setVar( 'view', 'ztautolink' );
		JRequest::setVar( 'layout', 'form'  );
		JRequest::setVar('hidemainmenu', 1);

		parent::display();
	}

	/**
	 * save a record (and redirect to main page)
	 * @return void
	 */
	function save()
	{
		$post = JRequest::get( 'post' );
		$task = JRequest::getCmd( 'task' );
				
		$model = $this->getModel('ztautolink');
		$item =& $model->getItem();
		switch ($task)
		{
			case 'apply':			
				if ($model->store($post)) {
					$msg = JText::_( 'Word applied!' );
				} else {
					$msg = JText::_( 'Error applying word!' );
				}
				$link	= 'index.php?option=com_ztautolink&controller=ztautolink&type=component&task=edit&cid[]='.$item->id;
				break;

			case 'save':
			default:
				if ($model->store($post)) {
					$msg = JText::_( 'Word saved!' );
				} else {
					$msg = JText::_( 'Error saving word!' );
				}
				$link = 'index.php?option=com_ztautolink';
				break;
		}

		$this->setRedirect($link, $msg);
	}

	/**
	 * remove record(s)
	 * @return void
	 */
	function remove()
	{
		$model = $this->getModel('ztautolink');
		if(!$model->delete()) {
			$msg = JText::_( 'Error: One or More Words Could not be Deleted' );
		} else {
			$msg = JText::_( 'Word(s) Deleted' );
		}

		$this->setRedirect( 'index.php?option=com_ztautolink', $msg );
	}
	
	function publish(){
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$this->setRedirect( 'index.php?option=com_ztautolink' );

		// Initialize variables
		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$cid		= JRequest::getVar( 'cid', array(), 'post', 'array' );
		$task		= JRequest::getCmd( 'task' );
		$publish	= ($task == 'publish');
		$n			= count( $cid );

		if (empty( $cid )) {
			return JError::raiseWarning( 500, JText::_( 'No items selected' ) );
		}

		JArrayHelper::toInteger( $cid );
		$cids = implode( ',', $cid );

		$query = 'UPDATE #__ztautolink'
		. ' SET published = ' . (int) $publish
		. ' WHERE id IN ( '. $cids.'  )'
		;
		$db->setQuery( $query );
		if (!$db->query()) {
			return JError::raiseWarning( 500, $db->getError() );
		}
		$this->setMessage( JText::sprintf( $publish ? 'Items published' : 'Items unpublished', $n ) );
	}

	/**
	 * cancel editing a record
	 * @return void
	 */
	function cancel()
	{
		$msg = JText::_( 'Operation Cancelled' );
		$this->setRedirect( 'index.php?option=com_ztautolink', $msg );
	}
	
	function type()
	{
		JRequest::setVar( 'edit', true );
		$model	=& $this->getModel( 'ztautolink' );
		$view =& $this->getView( 'ztautolink', 'html' );
		$view->setModel( $model, true );

		// Set the layout and display
		$view->setLayout('type');		
		$view->type();
	}
	
	function copy() {
		JRequest::checkToken() or jexit('Invalid Token');
		$model = & $this->getModel('ztautolinks');		
		$cid	= JRequest::getVar( 'cid', null, 'post', 'array' );
		$n		= count( $cid );
		
		$model->copy();
		if($n==1){
			$this->setMessage( JText::sprintf( '1 item duplicated' ) );
		}
		else{
			$this->setMessage( JText::sprintf( 'items duplicated', $n ) );
		}
		$this->setRedirect( 'index.php?option=com_ztautolink' );
	}
	
	function saveOrder() { //named for savePriority()
		JRequest::checkToken() or jexit('Invalid Token');
		$model = & $this->getModel('ztautolinks');		
		
		$model->saveOrder();
		$this->setRedirect( 'index.php?option=com_ztautolink' );
		$this->setMessage( JText::_('New priority/priorities saved') );

	}
	
}