<?php
/**
 * @version		$Id: demo-pascal.php 2012-03-05 vinaora $
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
<div class="slider-wrapper theme-pascal">
	<div class="ribbon"></div>
	<div id="vt_nivo_slider<?php echo $module_id; ?>" class="nivoSlider">
		<a href="http://vinaora.com/vinaora-visitors-counter/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-pascal/toystory_pascal.jpg" alt="toystory_pascal" title="Vinaora Visitors Counter" /></a>
		<a href="http://vinaora.com/vinaora-cu3er-3d-slideshow/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-pascal/up_pascal.jpg" alt="up_pascal" title="Vinaora Cu3er 3D slide-show" /></a>
		<a href="http://vinaora.com/vinaora-slick-slideshow/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-pascal/walle_pascal.jpg" alt="walle_pascal" title="Vinaora Slick Slideshow" /></a>
		<a href="http://vinaora.com/vinaora-nivo-slider/" target="_blank"><img src="<?php echo $base_url; ?>/media/mod_vt_nivo_slider/images/demo-pascal/nemo_pascal.jpg" alt="nemo_pascal" title="Vinaora Nivo Slider" /></a>
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
