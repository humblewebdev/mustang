<?php
/**
 * @version		$Id: demo-orman.php 2012-03-05 vinaora $
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
<div class="slider-wrapper theme-orman">
	<div class="ribbon"></div>
	<div id="vt_nivo_slider<?php echo $module_id; ?>" class="nivoSlider">
		<a href="http://vinaora.com/vinaora-nivo-slider/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-orman/toystory_orman.jpg" alt="toystory_orman" title="Vinaora Nivo Slider: The world's most awesome Joomla slider" /></a>
		<a href="http://vinaora.com/vinaora-cu3er-3d-slideshow/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-orman/up_orman.jpg" alt="up_orman" title="Vinaora Cu3er 3D slide-show: Shows images in 3D Flash Slide-show" /></a>
		<a href="http://vinaora.com/vinaora-slick-slideshow/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-orman/walle_orman.jpg" alt="walle_orman" title="Vinaora Slick Slideshow: Fashionable flash + image slideshow" /></a>
		<a href="http://vinaora.com/vinaora-visitors-counter/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-orman/nemo_orman.jpg" alt="nemo_orman" title="Vinaora Visitors Counter: Famous and nice counter module for Joomla" /></a>
	</div>
</div>
<script type="text/javascript">
	jQuery.noConflict();
	jQuery(window).load(function() {
		jQuery('#vt_nivo_slider<?php echo $module_id; ?>').nivoSlider({
		});
	});
</script>
<!-- END: Vinaora Nivo Slider >> http://vinaora.com/ -->
