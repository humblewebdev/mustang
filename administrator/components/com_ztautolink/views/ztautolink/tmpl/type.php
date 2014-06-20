<?php
defined('_JEXEC') or die('Restricted access'); 

// Precompute the CID of the keyword.
$typeCid = '&amp;cid[]=' . $this->ztautolinkType->id;
?>

<script language="javascript" type="text/javascript">
	<!--
		Window.onDomReady(function(){
			//document.treemanager.expandAll('menu-item');
		});
	//-->
</script>
<form action="index.php" method="post" name="adminForm">
	<table class="admintable" width="100%">
		<tr valign="top">
			<td width="60%">
				<!-- URL Type Section -->
				<fieldset>
					<legend><?php echo JText::_( 'Select URL' ); ?></legend>
					<ul id="menu-item" class="jtree">
						<li id="internal-node"><div class="node-open"><span></span><a href="#"><?php echo JText::_('Internal Link'); ?></a></div>
							<ul>
								<?php for ($i=0,$n=count($this->components);$i<$n;$i++) : ?>
									<?php if($this->components[$i]->legacy) : ?>
										<li><div class="node-open"><span></span><a href="index.php?option=com_ztautolink&amp;task=edit&amp;type=component&amp;url[option]=<?php echo $this->components[$i]->option . $typeCid; ?>" id="<?php echo str_replace('com_', '', $this->components[$i]->option); ?>"><?php echo $this->components[$i]->name; ?></a></div>
									<?php elseif ($this->expansion['option'] == str_replace('com_', '', $this->components[$i]->option)) : ?>
										<li <?php echo ($i == $n-1)? 'class="last"' : '' ?>><div class="node-open"><span></span><a id="<?php echo str_replace('com_', '', $this->components[$i]->option); ?>"><?php echo JText::_($this->components[$i]->name); ?></a></div>
										<?php echo $this->expansion['html']; ?>
									<?php else : ?>
										<li <?php echo ($i == $n-1)? 'class="last"' : '' ?>><div class="node"><span></span><a href="index.php?option=com_ztautolink&amp;controller=ztautolink&amp;task=type<?php echo $typeCid; ?>&amp;expand=<?php echo str_replace('com_', '', $this->components[$i]->option); ?>" id="<?php echo str_replace('com_', '', $this->components[$i]->option); ?>"><?php echo JText::_($this->components[$i]->name); ?></a></div>
									<?php endif; ?>
								</li>
								<?php endfor; ?>
							</ul>
						</li>
					</ul>
				</fieldset>
			</td>
			<td width="40%">
			</td>
		</tr>
	</table>
	<input type="hidden" name="option" value="com_ztautolink" />
	<input type="hidden" name="task" value="" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>