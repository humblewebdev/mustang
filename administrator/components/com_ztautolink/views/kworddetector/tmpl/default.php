<?php defined('_JEXEC') or die('Restricted access'); ?>
<form action="index.php" method="post" name="adminForm">
<h3> Allow user to find the articles that contain the links has same text with the keywords and allow user to remove those links! </h3>

<table>
<tr>
	<td align="left" width="100%">
		<?php echo JText::_( 'Input the text link' ); ?>:
		<input type="text" name="search" id="search" value="<?php echo htmlspecialchars($this->search); ?>" class="text_area" onchange="document.adminForm.submit();" />
		<button onclick="this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
		<button onclick="document.getElementById('search').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
	</td>
</tr>
</table>

<div id="editcell2">
	<table class="adminlist">
	<thead>
		<tr>
			
			<th>
				<?php echo JText::_( 'ID' ); ?>
				<?php //echo JHTML::_('grid.sort',  'Priority', 'priority', $this->lists['order_Dir'], $this->lists['order'] ); ?>
			</th>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count( $this->items ); ?>);" />
				<?php //echo JText::_( 'URL' ); ?>
			</th>
			<th>
				<?php echo JText::_( 'Article title' ); ?>
				<?php //echo JHTML::_('grid.sort',  'Link type', 'url_type', $this->lists['order_Dir'], $this->lists['order'] ); ?>
			</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="9">
				<?php echo $this->pagination->getListFooter(); ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
	<?php
	$k = 0;
	for ($i=0, $n=count( $this->items ); $i < $n; $i++)	{
		$row = &$this->items[$i];
		$checked 	= JHTML::_('grid.id',   $i, $row->id );
		?>
		<tr class="<?php //echo "row$k"; ?>">
			<td>
				<?php echo $row->id; ?>
			</td>
			<td>
				<?php echo $checked; ?>
			</td>
			<td>
				<span style="color: #0000ff"><?php echo $row->title; ?></span>
			</td>
			
		</tr>
		<?php
		$k = 1 - $k;
	}
	?>
	</tbody>
	</table>
</div>
<input type="hidden" name="view" value="kworddetector" />
<input type="hidden" name="option" value="com_ztautolink" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="controller" value="kworddetector" />
<?php echo JHTML::_( 'form.token' ); ?>

</form>
