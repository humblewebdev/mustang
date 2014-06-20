<?php

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.installer.installer');

// Load language file
//$lang = &JFactory::getLanguage();
//$lang->load('com_ztautolink');

$status = new JObject();
$status->plugins = array ();

$plugins = & $this->manifest->getElementByPath('plugins');

if (is_a($plugins, 'JSimpleXMLElement') && count($plugins->children())) {

	foreach ($plugins->children() as $plugin) {
		
		$pname = $plugin->attributes('plugin');
		$pgroup = $plugin->attributes('group');
		$db = & JFactory::getDBO();
		$query = 'SELECT `id` FROM #__plugins WHERE element = '.$db->Quote($pname).' AND folder = '.$db->Quote($pgroup);
		$db->setQuery($query);
		$plugins = $db->loadResultArray();
		if (count($plugins)) {
			foreach ($plugins as $plugin) {
				$installer = new JInstaller;
				$result = $installer->uninstall('plugin', $plugin, 0);
			}
		}
		$status->plugins[] = array ('name'=>$pname, 'group'=>$pgroup, 'result'=>$result);
	}
}


?>

