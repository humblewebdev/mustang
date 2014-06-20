<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php $rows =& $this->items; ?>
<form action="index.php" method="post" name="adminForm">

<table class="adminlist" style="width:50%; ">
<thead>
	<tr>
		<th width="200">
			<?php echo JText::_( 'Name' ); ?>
		</th>
		
		<th width="20">
			<?php echo JText::_( 'Enabled' ); ?>
		</th>
		<th class="title">
			<?php echo JText::_( 'ID' ); ?>
		</th>
	</tr>
</thead>

<tbody>
<?php
	$k = 0;
	for ($i=0, $n=count( $rows ); $i < $n; $i++) {
	$row 	= $rows[$i];
	$checked 	= JHTML::_('grid.id',   $i, $row->id );
	$published 	= JHTML::_('grid.published', $row, $i );

?>
	<tr class="<?php echo "row$k"; ?>">
	
		<td align="center">
			<?php echo $row->name;?>
		</td>
		
		<td align="center">
			<?php echo $published;?>
		</td>
		
		<td align="center">
			<?php echo $row->id;?>
		</td>
	</tr>
	<div style="display:none;"> <?php echo $checked; ?>  </div>
	<?php
		$k = 1 - $k;
	}
	?>
</tbody>
</table>



<input type="hidden" name="view" value="plugin" />
<input type="hidden" name="option" value="com_ztautolink" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="boxchecked" value="0" />
<input type="hidden" name="controller" value="plugin" />
<?php echo JHTML::_( 'form.token' ); ?>

</form>
