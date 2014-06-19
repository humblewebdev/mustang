<?php // no direct access
defined('_JEXEC') or die('Restricted access');

$i = $j = 0;

foreach ($cat as $group) :

	$listCondition = $group->cond;
	$list  = modGlobalNewsHelper::getGN_List($params,$listCondition);

	if (count($list) || $empty != 0) :

		$more  = $params->get('more', 1);

		$i++; $j++; ?>


  <div class="globalnews">
  <div id="top-news"></div>
    <?php 
  		if ( $show_cat != 0 ) : ?>
   <div id="news-title"><?php echo $group->image . $group->title; ?>
      <div class="gn_clear"></div>
   </div>
    <?php endif;
		if ( count ( $list) > 0 ) :
        	require(JModuleHelper::getLayoutPath('mod_globalnews', $layout));
        endif; ?>
        <div id="bottom-news"></div>
  </div>

<?php 
		if ( $i == $cols && $j != $total ) : ?>
     
<div class="gn_clear"></div>
<?php
			$i=0; 
		endif;
	endif;
endforeach; ?>

<div class="gn_clear"></div>

