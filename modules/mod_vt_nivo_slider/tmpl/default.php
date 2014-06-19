<?php
/**
 * @version		$Id: default.php 2012-03-05 vinaora $
 * @package		VINAORA NIVO SLIDER
 * @subpackage	mod_vt_nivo_slider
 * @copyright	Copyright (C) 2012 VINAORA. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @website		http://vinaora.com
 * @twitter		http://twitter.com/vinaora
 * @facebook	http://facebook.com/vinaora
 */

// no direct access
defined('_JEXEC') or die;
?>
<!-- BEGIN: Vinaora Nivo Slider >> http://vinaora.com/ -->
<div class="slider-wrapper theme-<?php echo $theme; ?>" id="sl">
	<div class="ribbon"></div>
	<div id="vt_nivo_slider<?php echo $module_id; ?>" class="nivoSlider">
		<?php echo $slider; ?>
	</div>
</div>
<script type="text/javascript">
	jQuery.noConflict();
	jQuery(window).load(function() {
		jQuery("#vt_nivo_slider<?php echo $module_id; ?>").nivoSlider({
			effect: '<?php echo $effect; ?>', // Specify sets like: 'fold,fade,sliceDown'
			slices: <?php echo $slices; ?>, // For slice animations
			boxCols: <?php echo $boxCols; ?>, // For box animations
			boxRows: <?php echo $boxRows; ?>, // For box animations
			animSpeed: <?php echo $animSpeed; ?>, // Slide transition speed
			pauseTime: <?php echo $pauseTime; ?>, // How long each slide will show
			startSlide: <?php echo $startSlide; ?>, // Set starting Slide (0 index)
			directionNav: <?php echo $directionNav; ?>, // Next & Prev navigation
			directionNavHide: <?php echo $directionNavHide; ?>, // Only show on hover
			controlNav: <?php echo $controlNav; ?>, // 1,2,3... navigation
			controlNavThumbs: <?php echo $controlNavThumbs; ?>, // Use thumbnails for Control Nav
			controlNavThumbsFromRel: <?php echo $controlNavThumbsFromRel; ?>, // Use image rel for thumbs
			controlNavThumbsSearch: '<?php echo $controlNavThumbsSearch; ?>', // Replace this with...
			controlNavThumbsReplace: '<?php echo $controlNavThumbsReplace; ?>', // ...this in thumb Image src
			keyboardNav: <?php echo $keyboardNav; ?>, // Use left & right arrows
			pauseOnHover: <?php echo $pauseOnHover; ?>, // Stop animation while hovering
			manualAdvance: <?php echo $manualAdvance; ?>, // Force manual transitions
			captionOpacity: <?php echo $captionOpacity; ?>, // Universal caption opacity
			prevText: '<?php echo $prevText; ?>', // Prev directionNav text
			nextText: '<?php echo $nextText; ?>', // Next directionNav text
			beforeChange: function(){}, // Triggers before a slide transition
			afterChange: function(){}, // Triggers after a slide transition
			slideshowEnd: function(){}, // Triggers after all slides have been shown
			lastSlide: function(){}, // Triggers when last slide is shown
			afterLoad: function(){} // Triggers when slider has loaded
		});
	});
</script>
<!-- END: Vinaora Nivo Slider >> http://vinaora.com/ -->
