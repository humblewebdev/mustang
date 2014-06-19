<?php // no direct access

defined('_JEXEC') or die('Restricted access');
?>

<?php
foreach ($list as $item) :  ?>

<div id="news-holder">
<div id="news-holder-bg">
<div class="news-text-global">

	<?php echo $item->content; ?>
</div>
</div>
</div>
<?php 
endforeach; ?>
<?php
if ( $more == 1 && $group->link ) : ?>
<div> <?php echo JHTML::_('link', $group->link, JText::_('More Articles...'), array('class'=>'readon') ); ?> </div>
<?php
endif;
?>

