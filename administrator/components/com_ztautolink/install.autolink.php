<?php

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.installer.installer');

// Load language file
//$lang = &JFactory::getLanguage();
//$lang->load('com_ztautolink');

$db = & JFactory::getDBO();
$status = new JObject();
$status->plugins = array();
$src = $this->parent->getPath('source');

$plugins = &$this->manifest->getElementByPath('plugins');
if (is_a($plugins, 'JSimpleXMLElement') && count($plugins->children())) {

	foreach ($plugins->children() as $plugin) {
		$pname = $plugin->attributes('plugin');
		$pgroup = $plugin->attributes('group');
		$path = $src.DS.'plugins'.DS.$pgroup;
		$installer = new JInstaller;
		$result = $installer->install($path);
		$status->plugins[] = array('name'=>$pname,'group'=>$pgroup, 'result'=>$result);

		$query = "UPDATE #__plugins SET published=1 WHERE element=".$db->Quote($pname)." AND folder=".$db->Quote($pgroup);
		$db->setQuery($query);
		$db->query();
	}
}
$languageName = '';
$basePath = JPATH_ROOT . '/administrator/components/com_ztautolink/install/info_install.php';
include sprintf( $basePath, $languageName);

// Database modifications [end]

?>