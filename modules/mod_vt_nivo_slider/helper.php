<?php
/**
 * @version		$Id: helper.php 2012-03-05 vinaora $
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

class modVT_Nivo_SliderHelper
{

	/*
	 * Add jQuery Library to <head> tag
	 */
	function addjQuery($source='local', $version='1.7.1'){
		$source = strtolower(trim($source));
		$version = trim($version);

		switch($source){
			case 'local':
				JHTML::script("jquery.min.js", "media/mod_vt_nivo_slider/js/jquery/$version/");
				break;
			case 'google':
				JHTML::script("jquery.min.js", "https://ajax.googleapis.com/ajax/libs/jquery/$version/");
				break;
			default:
				return false;
		}
		return true;
	}

	/*
	 * Add file [theme].css to <head> tag
	 */
	function addThemCSS($theme, $layout='default'){
		switch($layout){
			case 'demo-standard':
				$theme = "default";
				break;
			case 'demo-pascal':
				$theme = "pascal";
				break;
			case 'demo-orman':
				$theme = "orman";
				break;
			default:
				$theme = trim($theme);
				break;
		}
		JHTML::stylesheet("$theme.css", "media/mod_vt_nivo_slider/themes/$theme/");
		return true;
	}

	/*
	 * Get a Parameter in a Parameters String which are separated with a specify symbol (default: vertical bar '|').
	 * Example: Parameters = "value1 | value2 | value3". Return "value2" if positon = 2
	 */
	function getParam($param, $position=1, $separator='|'){

		$position = intval($position);

		// Not found the separator in string
		if( strpos($param, $separator) === false ){
			if ( $position == 1 ) return $param;
		}
		else{
			$items = explode($separator, $param);
			if ( ($position > 0) && ($position < count($items)+1) ) return $items[$position-1];
		}

		return '';
	}

	/*
	 * Get Images from a directory
	 */
	function getItems($params){

		$items		= null;
		$item_dir	= $params->get('item_dir');

		if ($item_dir != "-1"){

			$filter		= '([^\s]+(\.(?i)(jpg|png|gif|bmp))$)';
			$exclude	= array('index.html', '.svn', 'CVS', '.DS_Store', '__MACOSX', '.htaccess');
			// $excludefilter = array();
			// array_push($excludefilter, $params->get('controlNavThumbsReplace'));

			$items		= JFolder::files(JPATH_BASE.DS.'images'.DS.$item_dir, $filter, false, false, $exclude);
		}

		return $items;
	}

	/*
	 * Get corresponding links
	 */
	function getLinks($params, $separator = "\n"){
		$str = '';
		$item_dir = $params->get('item_dir');
		$items = self::getItems($params);

		if (empty($items) || !count($items)) return $str;

		$titles = $params->get('item_title');
		$titles	= str_replace("|", "\r\n", $titles);

		$links = $params->get('item_url');
		$links	= str_replace("|", "\r\n", $links);


		$target = $params->get('item_target');

		foreach($items as $i=>$value){

			$title	= self::getParam($titles, $i+1, $separator);
			$title	= trim($title);
			$title	= htmlspecialchars($title, ENT_QUOTES);

			$link	= self::getParam($links, $i+1, $separator);
			$link	= trim($link);
			$link	= htmlspecialchars($link, ENT_QUOTES);

			$src	= rtrim(JURI::base(true), "/")."/images/$item_dir/$value";
			$value	= str_replace($params->get('controlNavThumbsSearch'), $params->get('controlNavThumbsReplace'), $value);
			$rel 	= JURI::base(false)."images/$item_dir/$value";

			$img	= "<img src=\"$src\" alt=\"Vinaora Nivo Slider\" title=\"$title\" rel=\"$rel\" />";

			if (!empty($link)){
				$str .= "<a href=\"$link\" target=\"$target\">" . $img . "</a>";
			}else{
				$str .= $img;
			}
		}
		$str .= "\n";
		return $str;
	}

	/*
	 * Get the first slide to start slideshow
	 */
	function getStartSlide($params){
		$startSlide = intval($params->get('startSlide'));
		$items = self::getItems($params);
		if (empty($items) || !count($items)) return 0;
		$total = count($items);
		
		$startSlide = min($startSlide, $total);
		$startSlide = (!$startSlide) ? mt_rand(0, $total-1) : $startSlide-1;

		return $startSlide;
	}
}
