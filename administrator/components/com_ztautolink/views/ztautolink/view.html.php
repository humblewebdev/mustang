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
jimport('joomla.html.pane');
class ZtautolinksViewZtautolink extends JView
{
	
	function display($tpl = null)
	{
		
		$ztautolink		=& $this->get('Data');
		$isNew		= ($ztautolink->id < 1);

		$text = $isNew ? JText::_( 'New' ) : JText::_( 'Edit' );
		$headText = $isNew ? '<h3 style="margin: 5px 0;">'.JText::_( 'Please input the URL field first!' ).'</h3>' : '';
		JToolBarHelper::title(   JText::_( 'ZtAutolink' ).': <small><small>[ ' . $text.' ]</small></small>' );
		JToolBarHelper::save();
		JToolBarHelper::apply();
		if ($isNew)  {
			JToolBarHelper::cancel();
		} else {
			// for existing items the button is renamed `close`
			JToolBarHelper::cancel( 'cancel', 'Close' );
		}
		
		$lists = array();		
		$category = array();
		$category[] = JHTML::_('select.option','0','Internal Link');
		$category[] = JHTML::_('select.option','1', 'External Link');
		$category = JHTML::_('select.genericlist', $category, 'catid', 'class="inputbox" size="1"', 'value', 'text', intval( $ztautolink->catid ));
		
		$occurrence = array();
		$occurrence[0]->value=0;
		$occurrence[0]->name='First';	
		$occurrence[1]->value=1;
		$occurrence[1]->name='Last';	
		$occurrence[2]->value=2;
		$occurrence[2]->name='Random';	
		
		$published = JHTML::_('select.booleanlist',  'published', '', $ztautolink->published );
		$target = JHTML::_('select.booleanlist',  'target', '', ($ztautolink->target!=null) ? $ztautolink->target : 1);
		$nofollow = JHTML::_('select.booleanlist',  'nofollow', '', $ztautolink->nofollow );
		$occurrence = JHTML::_('select.genericlist', $occurrence, 'occurrence', 'class="inputbox" ', 'value', 'name', $ztautolink->occurrence ); 
		$this->assignRef('published',		$published);
		$this->assignRef('target',			$target);
		$this->assignRef('nofollow',		$nofollow);
		$this->assignRef('occurrence',		$occurrence);
		$this->assignRef('ztautolink',		$ztautolink);
		$this->assignRef('category',		$category);
		
		$item = &$this->get('Item');
		$lists = new stdClass();
		$lists->disabled = 'readonly="true"';

		$item->expansion = null;
		
		$item->linkfield = '<input type="hidden" name="url" value="'.$item->url.'" />';
		if (($item->id) && ($item->type == 'component') && (isset($item->linkparts['option']))) {
			$item->expansion = '&amp;expand='.trim(str_replace('com_', '', $item->linkparts['option']));
		}
		
		// Add slider pane
        // TODO: allowAllClose should default true in J!1.6, so remove the array when it does.
		$pane = &JPane::getInstance('sliders', array('allowAllClose' => true));
		$this->assignRef('pane', $pane);
		$this->assignRef('item'		, $item);
		$urlparams		= &$this->get( 'UrlParams' );
		$params			= &$this->get( 'StateParams' );
		$this->assignRef('urlparams', $urlparams);
		$this->assignRef('params'	, $params);
		$this->assignRef('headText'	, $headText);

		parent::display($tpl);
	}
	
	function getComponentList()
	{
		$db = &JFactory::getDBO();
		$query = 'SELECT c.id, c.name, c.link, c.option' .
				' FROM #__components AS c' .
				' WHERE c.link <> "" AND parent = 0 AND enabled = 1' .
				' ORDER BY c.name';
		$db->setQuery( $query );
		$result = $db->loadObjectList( );
		return $result;
	}
	
	function type($tpl = null)
	{

		global $mainframe;

		$lang =& JFactory::getLanguage();
		$this->_layout = 'type';

		$ztautolinkType =& $this->get('Data');
		// Set toolbar items for the page
		if (!$ztautolinkType->id) {
			JToolBarHelper::title(  JText::_( 'Keyword' ) .': <small><small>[ '. JText::_( 'New' ) .' ]</small></small>', 'menu.png' );
		} else {
			JToolBarHelper::title(  JText::_( 'Change Keyword Url' ), 'menu.png' );
		}

		// Set toolbar items for the page
		JToolBarHelper::cancel('view');
		JToolBarHelper::help( 'screen.menus.edit' );

		// Add scripts and stylesheets to the document
		$document	= & JFactory::getDocument();

		if($lang->isRTL()){
			$document->addStyleSheet('components/com_menus/assets/type_rtl.css');
		} else {
			$document->addStyleSheet('components/com_menus/assets/type.css');
		}
		JHTML::_('behavior.tooltip');

		// Load component language files
		$components	= $this->getComponentList();
		$n = count($components);
		for($i = 0; $i < $n; $i++)
		{
			$path = JPATH_SITE.DS.'components'.DS.$components[$i]->option.DS.'views';
			$components[$i]->legacy = !is_dir($path);

			$lang->load($components[$i]->option, JPATH_ADMINISTRATOR);
		}

		// Initialize variables
		$ztautolinkType			= &$this->get('Data');
		$expansion		= &$this->get('Expansion');
		$component		= &$this->get('Component');
		// Set document title
		if ($ztautolinkType->id) {
			$document->setTitle(JText::_( 'Internal Url' ) .': ['. JText::_( 'Edit' ) .']');
		} else {
			$document->setTitle(JText::_( 'Internal Url' ) .': ['. JText::_( 'New' ) .']');
		}

		$this->assignRef('ztautolinkType',		$ztautolinkType);
		$this->assignRef('components',	$components);
		$this->assignRef('expansion',	$expansion);

		parent::display($tpl);
	}
}