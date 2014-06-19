<?php
/**
 * @version		$Id: mod_vt_nivo_slider.php 2012-03-05 vinaora $
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

// Require the base helper class only once
require_once dirname(__FILE__).DS.'helper.php';

$module_id	= $module->id;
$base_url	= rtrim(JURI::base(true), "/");

JHTML::stylesheet('nivo-slider.css', 'media/mod_vt_nivo_slider/css/');

$layout = ltrim($params->get('layout', 'default'), '_:');
$theme = $params->get('theme', 'default');
modVT_Nivo_SliderHelper::addThemCSS($theme, $layout);

$source = $params->get('jquery_source', 'local');
$version = $params->get('jquery_version', '1.7.1');
modVT_Nivo_SliderHelper::addjQuery($source, $version);

JHTML::script('jquery.nivo.slider.min.js', 'media/mod_vt_nivo_slider/js/');

if ($layout == 'default'){
	$effect						= $params->get('effect');
	$slices						= intval($params->get('slices'));
	$boxCols					= intval($params->get('boxCols'));
	$boxRows					= intval($params->get('boxRows'));

	$animSpeed					= intval($params->get('animSpeed'));
	$pauseTime					= intval($params->get('pauseTime'));

	$directionNav				= $params->get('directionNav') ? "true" : "false";
	$directionNavHide			= $params->get('directionNavHide') ? "true" : "false";

	$controlNav					= $params->get('controlNav') ? "true" : "false";
	$controlNavThumbs			= $params->get('controlNavThumbs') ? "true" : "false";
	$controlNavThumbsFromRel	= $params->get('controlNavThumbsFromRel') ? "true" : "false";

	$controlNavThumbsSearch		= trim($params->get('controlNavThumbsSearch'));
	$controlNavThumbsSearch		= htmlspecialchars($controlNavThumbsSearch, ENT_QUOTES);
	$controlNavThumbsReplace	= trim($params->get('controlNavThumbsReplace'));
	$controlNavThumbsReplace	= htmlspecialchars($controlNavThumbsReplace, ENT_QUOTES);

	$keyboardNav				= $params->get('keyboardNav') ? "true" : "false";
	$pauseOnHover				= $params->get('pauseOnHover') ? "true" : "false";
	$manualAdvance				= $params->get('manualAdvance') ? "true" : "false";
	$captionOpacity				= intval($params->get('captionOpacity')) / 100;

	$prevText					= htmlspecialchars($params->get('prevText'), ENT_QUOTES);
	$nextText					= htmlspecialchars($params->get('nextText'), ENT_QUOTES);

	$params->set('controlNavThumbsSearch', $controlNavThumbsSearch);
	$params->set('controlNavThumbsReplace', $controlNavThumbsReplace);

	$startSlide = modVT_Nivo_SliderHelper::getStartSlide($params);

	$slider = modVT_Nivo_SliderHelper::getLinks($params);

	$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));
}

require JModuleHelper::getLayoutPath('mod_vt_nivo_slider', $params->get('layout', 'default'));
