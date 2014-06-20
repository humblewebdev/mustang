<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php 
	$path = JURI::base().'components/com_ztautolink/views/ztautolink/rainbow/'; 
?>
<link type="text/css" href="<?php echo $path; ?>mooRainbow.css" rel="stylesheet" />
<script type="text/javascript" src="<?php echo $path; ?>mooRainbow.js"></script>

	<script type="text/javascript">
		function isNumeric(value){
			var numericExpression = /^[-0-9]+$/;
			if(value.match(numericExpression)){
				return true;
			}else{
				return false;
			}
		}
		function isHyphen(value){
			var hyphenExpression = /^[-]+$/;
			if(value.match(hyphenExpression)){
				return true;
			}else{
				return false;
			}
		}
		function submitbutton(pressbutton) {
			if (pressbutton == 'cancel') {
				submitform(pressbutton);
			}else{
				var form = document.adminForm;
				// do field validation
				if ( (form.word.value.length < 2)||(form.word.value.trim() == "") ) {
					alert( "<?php echo JText::_( 'You must provide a keyword.', true ); ?>" );
				} else if ( form.url.value == "" ) {
					alert( "<?php echo JText::_( 'You must provide url of keyword.', true ); ?>" );
				} else if ( form.priority.value == "" ) {
					alert( "<?php echo JText::_( 'You must provide priority of keyword.', true ); ?>" );
				} else if ( isHyphen(form.priority.value) ) {
					alert( "<?php echo JText::_( 'Priority must be numeric!', true ); ?>" );
				} else if ( !isNumeric(form.priority.value) ) {
					alert( "<?php echo JText::_( 'Priority must be numeric!', true ); ?>" );
				} else if ( (parseInt(form.priority.value) > 9999)||(parseInt(form.priority.value) < 0) ) {
					alert( "<?php echo JText::_( 'Priority must be in 0-9999 range.', true ); ?>" );
				} else if ( form.limit.value == "" ) {
					alert( "<?php echo JText::_( 'You must provide limit of keyword.', true ); ?>" );
				} else if ( isHyphen(form.limit.value) ) {
					alert( "<?php echo JText::_( 'Limit must be numeric!', true ); ?>" );
				} else if ( !isNumeric(form.limit.value) ) {
					alert( "<?php echo JText::_( 'Limit must be numeric!', true ); ?>" );
				} else if ( (parseInt(form.limit.value) > 999999999)||(parseInt(form.limit.value) < 0) ) {
					alert( "<?php echo JText::_( 'Limit must be in 0-999999999 range.', true ); ?>" );
				}  else {
					submitform( pressbutton );
				}
			}    
		}
	</script>

<form action="index.php" method="post" name="adminForm" id="adminForm">
<div class="col100">
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Details' ); ?></legend>
		<?php echo $this->headText; ?>
		<table class="admintable">
		<tr valign="top">
		<td width="60%">
			<table>
			<tr>
				<td width="100" align="right" class="key">
					<label for="word">
						<?php echo JText::_( 'Keyword' ); ?>:
					</label>
				</td>
				<td>
					<input class="text_area" type="text" name="word" id="word" size="80" maxlength="250" value="<?php echo $this->ztautolink->word;?>" />
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="published">
						<?php echo JText::_( 'Published' ); ?>:
					</label>
				</td>
				<td>
					<?php echo $this->published; ?>
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="link_title">
						<?php echo JText::_( 'Link title' ); ?>:
					</label>
				</td>
				<td>
					 <input class="text_area" type="text" name="link_title" id="link_title" size="50" maxlength="100" value="<?php echo $this->ztautolink->link_title; ?>" /> 
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="target">
						<?php echo JText::_( 'Target=_blank' ); ?>:
					</label>
				</td>
				<td>
					<?php echo $this->target; ?>
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="nofollow">
						<?php echo JText::_( 'NoFollow' ); ?>:
					</label>
				</td>
				<td>
					<?php echo $this->nofollow; ?>
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="priority">
						<?php echo JText::_( 'Priority' ); ?>:
					</label>
				</td>
				<td>				
					<input class="text_area" type="text" name="priority" id="priority" size="4" maxlength="10" value="<?php echo $this->ztautolink->priority; ?>" />
				</td>
			</tr>
			<tr>
				<td valign="top" align="right" class="key">
					<label for="catid"><?php echo JText::_( 'Select link type' ); ?>: </label>			
				</td>
				<td>
					<?php echo $this->category; ?>			
				</td>
			</tr>
			<tr>
			  <td valign="top" align="right" class="key"><?php echo JText::_( 'Select a url' ); ?></td>
				<td>
					<?php 
						$doc 		=& JFactory::getDocument();
						$js = "
								function jSelectArticle(id, title, object) {
									//document.getElementById(object + '_id').value = id;
									//document.getElementById(object + '_name').value = title;
									document.getElementById('url').value = 'index.php?option=com_content&view=article&id=' + id;
									document.getElementById('sbox-window').close();						
								}";
								
						$doc->addScriptDeclaration($js);			
						$name		='article';			
						$link 		= 'index.php?option=com_content&amp;task=element&amp;tmpl=component&amp;object='.$name;
												
						JHTML::_('behavior.modal', 'a.modal');
						//$html .= '<div class="button2-left"><div class="blank"><a name="id_modal" id="id_modal" class="modal" title="'.JText::_('Select an Article').'"  href="'.$link.'" rel="{handler: \'iframe\', size: {x: 650, y: 375}}">'.JText::_('Select article').'</a></div></div>'."\n";
						$html .= "\n".'<input type="hidden" id="article_id" name="article_id" value="" />';	
						$html .= '<a name="id_modal" id="id_modal" title="'.JText::_('Select an Article').'" href="" >'.JText::_('Select article').'</a>';
						//echo $html;		
						$html  = '<a name="id_modal" id="id_modal" ></a>';
						echo $html;						
					?>	
					
					<?php 
						$js2 = "
								function jSelectItem(id, title, object) {
									document.getElementById('url').value = 'index.php?option=com_k2&view=item&id=' + id;
									document.getElementById('sbox-window').close();						
								}";
								
						$doc->addScriptDeclaration($js2);			
						$name2		='item';			
						$link2 		= 'index.php?option=com_k2&amp;view=items&amp;task=element&amp;tmpl=component&amp;object='.$name2;
												
						JHTML::_('behavior.modal', 'a.modal');
						//$htmlK2 .= '<div class="button2-left"><div class="blank"><a name="id_modal2" id="id_modal2" class="modal" title="'.JText::_('Select an K2 item').'"  href="'.$link2.'" rel="{handler: \'iframe\', size: {x: 650, y: 375}}">'.JText::_('Select K2 item').'</a></div></div>'."\n";
						$htmlK2 .= '<a name="id_modal2" id="id_modal2" title="'.JText::_('Select an K2 item').'" href="index.php?option=com_ztautolink&controller=ztautolink&task=type&cid[]='.$this->ztautolink->id.'" >'.JText::_('Select the Url').'</a>';
						echo $htmlK2;			

					?>
					
					<div id="none_id" style="display:none" class="modal">None</div>
						  
			  </td>

			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="url">
						<?php echo JText::_( 'URL' ); ?>:
					</label>
				</td>
				<td>
					<input class="text_area" type="text" name="url" id="url" size="80" maxlength="250" value="<?php echo $this->item->url;?>" />
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="url_type">
						<?php echo JText::_( 'Redirect' ); ?>:
					</label>
				</td>
				<td>
					<input name="url_type" type="radio" value="0" <?php if(intval($this->ztautolink->url_type) == 0){ ?> checked <?php } ?> /> <span>No</span>
					<input name="url_type" type="radio" value="1" <?php if(intval($this->ztautolink->url_type) == 1){ ?> checked <?php } ?> /> <span>Yes</span>
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="link_color">
						<?php echo JText::_( 'Link color' ); ?>:
					</label>
				</td>
				<td>
					<div class="">
						<script type="text/javascript">
							window.addEvent('domready', function() {
								var r = new MooRainbow('myRainbow', {
									'startColor': [58, 142, 246],
									'onChange': function(color) {
										$('link_color').value = color.hex;
									}
								});
							});
						</script>
						<label>
							<img id="myRainbow" src="<?php echo $path; ?>images/rainbow.png" alt="[r]" width="16" height="16" />
							<input id="link_color" value="<?php echo $this->ztautolink->link_color; ?>" name="link_color" type="text" size="13" />
						</label>
					</div>
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="custom_css">
						<?php echo JText::_( 'Custom css' ); ?>:
					</label>
				</td>
				<td>
					<input class="text_area" type="text" name="custom_css" id="custom_css" size="160" maxlength="250" value="<?php echo $this->ztautolink->custom_css; ?>" />
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="limit">
						<?php echo JText::_( 'Limit' ); ?>:
					</label>
				</td>
				<td>				
					<input class="text_area" type="text" name="limit" id="limit" size="11" maxlength="20" value="<?php echo $this->ztautolink->limit; ?>" />
				</td>
			</tr>
			<tr>
				<td width="100" align="right" class="key">
					<label for="occurrence">
						<?php echo JText::_( 'Occurrence' ); ?>:
					</label>
				</td>
				<td>				
					<?php echo $this->occurrence; ?>
				</td>
			</tr>
			</table>
		</td>		
		<td width="40%">
			<?php
				echo $this->pane->startPane("menu-pane");
				echo $this->pane->startPanel(JText :: _('Parameters - Basic'), "param-page");
				echo $this->urlparams->render('urlparams');
				if(count($this->params->getParams('params'))) :
					echo $this->params->render('params');
				endif;

				if(!count($this->params->getNumParams('params')) && !count($this->urlparams->getNumParams('urlparams'))) :
					echo "<div style=\"text-align: center; padding: 5px; \">".JText::_('There are no parameters for this item')."</div>";
				endif;
				echo $this->pane->endPanel();
			?>
		</td>
		</tr>
	</table>
	</fieldset>
</div>

					<script type="text/javascript">
						var form = document.adminForm;
						var selectmenu=form.catid;
						
						//not show Select article button if pre value is external
						var dbChosen=selectmenu.options[selectmenu.selectedIndex]; 
						if (dbChosen.value==1){
								document.getElementById('id_modal').style.display='none';
								document.getElementById('id_modal2').style.display='none';
								document.getElementById('none_id').style.display='';
								document.getElementById('url').removeAttribute('readonly');
						}else {
								document.getElementById('id_modal').style.display='';
								document.getElementById('id_modal2').style.display='';
								document.getElementById('none_id').style.display='none';
								document.getElementById('url').setAttribute('readonly', 'true');
						}
						
						selectmenu.onchange=function(){ 
							var chosenoption=this.options[this.selectedIndex]; 
							if (chosenoption.value==1){
								document.getElementById('id_modal').style.display='none';
								document.getElementById('id_modal2').style.display='none';
								document.getElementById('none_id').style.display='';
								document.getElementById('url').removeAttribute('readonly');
							 }else {
								document.getElementById('id_modal').style.display='';
								document.getElementById('id_modal2').style.display='';
								document.getElementById('none_id').style.display='none';
								document.getElementById('url').setAttribute('readonly', 'true');
							}
						}			
					</script>				


<div class="clr"></div>

<?php //echo $this->item->linkfield; ?>

<input type="hidden" name="option" value="com_ztautolink" />
<input type="hidden" name="id" value="<?php echo $this->ztautolink->id; ?>" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="controller" value="ztautolink" />
<?php echo JHTML::_( 'form.token' ); ?>
</form>
