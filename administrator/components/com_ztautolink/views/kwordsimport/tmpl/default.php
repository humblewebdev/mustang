<?php defined('_JEXEC') or die('Restricted access'); 
?>
<form enctype="multipart/form-data" action="index.php" method="post" name="adminForm">
	<?php echo $this->tabs->startPane('importexport-pane'); ?>
	
	<?php echo $this->tabs->startPanel('Import', 'import'); ?>
		<h3 style="margin:0; ">Keywords Import</h3>
		<table class="adminform">
			<tr>
				<th colspan="2"><?php echo JText::_( 'Import keywords from Csv file' ); ?>:</th>
			</tr>
			<tr>
				<td width="120">
					<label for="import"><?php echo JText::_( 'Csv file' ); ?>:</label>
				</td>
				<td>
					<input class="text_area" type="file" size="100" name="csvpath" id="csvpath" /> 
					<input type="button" name="import" value="<?php echo JText::_( 'Import' ); ?>" onclick="submitbutton('import')" />
				</td>
			</tr>
		</table>
	<?php echo $this->tabs->endPanel(); ?>
	
	<?php echo $this->tabs->startPanel('Export', 'export'); ?>
		<h3 style="margin:0; ">Keywords Export</h3>
		<table class="admintable adminform">
			<tr>
				<th colspan="2"><?php echo JText::_( 'Export filters' ); ?>:</th>			
			</tr>
			<tr>
				<td width="120" class="key">
					<label for="catid"><?php echo JText::_( 'Link type' ); ?>:</label>
				</td>
				<td>
					<select name="catid">
						<option value="2">All</option>
						<option value="0">Internal link</option>
						<option value="1">External link</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="120" class="key">
					<label for="redirect"><?php echo JText::_( 'Redirect' ); ?>:</label>
				</td>
				<td>
					<select name="url_type">
						<option value="2">All</option>
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="120" class="key">
					<label for="target"><?php echo JText::_( 'Target = _blank' ); ?>:</label>
				</td>
				<td>
					<select name="target">
						<option value="2">All</option>
						<option value="0">No</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="120" class="key">
					<label for="priority"><?php echo JText::_( 'Priority' ); ?>:</label>
				</td>
				<td>
					<input type="text" name="priority_from" value="" size="10" /> <?php echo JText::_( 'to' ); ?>
					<input type="text" name="priority_to" value="" size="10" />
				</td>
			</tr>
			<tr><td></td></tr>
		</table>
		<input type="button" name="export" value="<?php echo JText::_( 'Export' ); ?>" onclick="submitbutton('export')" />
	<?php echo $this->tabs->endPanel(); ?>
	
	<?php echo $this->tabs->endPane(); ?>
	
	<input type="hidden" name="view" value="kwordsimport" />
	<input type="hidden" name="option" value="com_ztautolink" />
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="controller" value="kwordsimport" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>