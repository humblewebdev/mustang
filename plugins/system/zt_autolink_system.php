<?php
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
 
// Import library dependencies
jimport('joomla.plugin.plugin');
 
class plgSystemZt_Autolink_System extends JPlugin
{

	function plgSystemZt_Autolink_System( &$subject )
	{
		parent::__construct( $subject );
	}
	function onAfterRoute(){
		global $mainframe;
		if($mainframe->isSite()){
			$plugin = JPluginHelper::getPlugin('system','zt_autolink_system');
			$pluginParams	= new JParameter( $plugin->params);
			$this->hsSettings($pluginParams);
		}
	}
	function onAfterRender(){
		global $mainframe;
		$document	= &JFactory::getDocument();
		$doc_type = $document->getType();
		if( ($mainframe->isSite())&&($doc_type=='html') )
		{
			$body = JResponse::getBody();
			$body_opentag_pos = strpos($body, '<body');
			$body_closetag_pos = strpos($body, '/body>');
			$htmlHead = substr($body, 0, $body_opentag_pos);
			$htmlBody = substr($body, $body_opentag_pos, $body_closetag_pos - $body_opentag_pos + strlen('/body>'));
			
			$plugin = JPluginHelper::getPlugin('system','zt_autolink_system');
			$pluginParams	= new JParameter( $plugin->params);
			
			$db =& JFactory::getDBO();
			$db->setQuery("SELECT * FROM `#__ztautolink` WHERE published = 1 ORDER BY priority DESC");
			$words = $db->loadObjectList();
			
			preg_match_all('/<acronym(.*?)>(.*?)<\/acronym>/si', $htmlBody, $match_acronym_tag); 
			for($i = 0; $i < count($match_acronym_tag[0]); $i++)
			{
				$rpl = "acronym_tag_store_".$i."~";
				$htmlBody = str_replace($match_acronym_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<a(.*?)>(.*?)<\/a>/si', $htmlBody, $match_a_tag); 
			for($i = 0; $i < count($match_a_tag[0]); $i++)
			{
				$rpl = "a_tag_store_".$i."~";
				$htmlBody = str_replace($match_a_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<img(.*?)>/si', $htmlBody, $match_img_tag);
			for($i = 0; $i < count($match_img_tag[0]); $i++)
			{
				$rpl = "img_tag_store_".$i."~";
				$htmlBody = str_replace($match_img_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<input(.*?)>/si', $htmlBody, $match_input_tag);
			for($i = 0; $i < count($match_input_tag[0]); $i++)
			{
				$rpl = "input_tag_store_".$i."~";
				$htmlBody = str_replace($match_input_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<p(.*?)>/si', $htmlBody, $match_p_tag);
			for($i = 0; $i < count($match_p_tag[0]); $i++)
			{
				$rpl = "p_tag_store_".$i."~";
				$htmlBody = str_replace($match_p_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<div(.*?)>/si', $htmlBody, $match_div_tag);
			for($i = 0; $i < count($match_div_tag[0]); $i++)
			{
				$rpl = "div_tag_store_".$i."~";
				$htmlBody = str_replace($match_div_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<ul(.*?)>/si', $htmlBody, $match_ul_tag);
			for($i = 0; $i < count($match_ul_tag[0]); $i++)
			{
				$rpl = "ul_tag_store_".$i."~";
				$htmlBody = str_replace($match_ul_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<li(.*?)>/si', $htmlBody, $match_li_tag);
			for($i = 0; $i < count($match_li_tag[0]); $i++)
			{
				$rpl = "li_tag_store_".$i."~";
				$htmlBody = str_replace($match_li_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<span(.*?)>/si', $htmlBody, $match_span_tag);
			for($i = 0; $i < count($match_span_tag[0]); $i++)
			{
				$rpl = "span_tag_store_".$i."~";
				$htmlBody = str_replace($match_span_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<h1(.*?)>/si', $htmlBody, $match_h1_tag);
			for($i = 0; $i < count($match_h1_tag[0]); $i++)
			{
				$rpl = "h1_tag_store_".$i."~";
				$htmlBody = str_replace($match_h1_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<h2(.*?)>/si', $htmlBody, $match_h2_tag);
			for($i = 0; $i < count($match_h2_tag[0]); $i++)
			{
				$rpl = "h2_tag_store_".$i."~";
				$htmlBody = str_replace($match_h2_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<h3(.*?)>/si', $htmlBody, $match_h3_tag);
			for($i = 0; $i < count($match_h3_tag[0]); $i++)
			{
				$rpl = "h3_tag_store_".$i."~";
				$htmlBody = str_replace($match_h3_tag[0][$i], $rpl, $htmlBody);
			}
			
			preg_match_all('/<h4(.*?)>/si', $htmlBody, $match_h4_tag);
			for($i = 0; $i < count($match_h4_tag[0]); $i++)
			{
				$rpl = "h4_tag_store_".$i."~";
				$htmlBody = str_replace($match_h4_tag[0][$i], $rpl, $htmlBody);
			}
			
			$array_replace_link = array();
			$array_replace_div = array();
			
			foreach($words as $word){
				if($word->catid ==0) {
					$word->url = JRoute::_($word->url); 
				}	
				
				if(intval($word->target)==1) $target = ' target="_blank" ';
				else $target = '';
				
				if(intval($word->nofollow)==1) $nofollow = ' rel="nofollow" '; 
				else $nofollow = '';
				
				if(trim($word->link_title)!='') $link_title = ' title="'.$word->link_title.'" ';
				else $link_title = '';
				
				if(trim($word->link_color)!='') $link_color = ' color:'.$word->link_color.';'; 
				else $link_color = '';
				
				if(trim($word->custom_css)!='') $custom_css = ' '.$word->custom_css; 
				else $custom_css = '';
				
				if(($link_color =='')&&($custom_css=='')){
					$styleOpen = '';
					$styleClose = '';
				}
				else{
					$styleOpen = ' style="';
					$styleClose = '" ';
				}
				
				$_x_word = '/[( "~>]'.$word->word.'[, .;:")?!<]/i';			
				preg_match($_x_word, $htmlBody, $match_words);
				
				if(count($match_words)>0){ 		
					$limit = $word->limit;
					$position = $word->occurrence;
					preg_match_all($_x_word, $htmlBody, $match_se);	
					if(($limit>0)&&($limit<count($match_se[0]))){ //limit the number of keywords to display
						$article_pre_part = '';
						$article_processed_part = '';
						$article_nonprocessed_part = '';
						
						$matcht = preg_split($_x_word, $htmlBody);
						if($position == 0){ //first
							for($i=0; $i<$limit; $i++){
								$article_processed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							for($i=$limit; $i<count($match_se[0]); $i++){
								$article_nonprocessed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							$article_nonprocessed_part .= $matcht[count($match_se[0])];
						}
						else if($position == 1){ //last
							$landmark = count($match_se[0]) - $limit;
							for($i=0; $i<$landmark; $i++){
								$article_nonprocessed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							for($i=$landmark; $i<count($match_se[0]); $i++){
								$article_processed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							$article_processed_part .= $matcht[count($match_se[0])];
						}
						else{ //random
							$pre_landmark = rand(0, count($match_se[0]) - $limit);
							for($i=0; $i<$pre_landmark; $i++){
								$article_pre_part .= $matcht[$i].$match_se[0][$i]; 
							}
							for($i=$pre_landmark; $i < $limit+$pre_landmark; $i++){
								$article_processed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							for($i=$limit+$pre_landmark; $i<count($match_se[0]); $i++){
								$article_nonprocessed_part .= $matcht[$i].$match_se[0][$i]; 
							}
							$article_nonprocessed_part .= $matcht[count($match_se[0])];
						}
					}
					else{ //display all keywords
						$article_pre_part = '';
						$article_processed_part = $htmlBody;
						$article_nonprocessed_part = '';
					}
				
					if($word->url_type == 1){
						if(intval($pluginParams->get('confirm_popup'))==1){
							$popupText = $pluginParams->get('confirm_popup_text');
							$article_text = '';
							$i = 0;
							while(strlen($article_processed_part)>0){
								preg_match($_x_word, $article_processed_part, $first_match);
								if(count($first_match)>0){
									$head_pos = strpos($article_processed_part, $first_match[0]);
									$article_text .= substr($article_processed_part, 0, $head_pos+1);

									$id_number = rand(10000, 99999).rand(1000, 9999).rand(100, 999);
									$id = "'autolink-".$id_number.$i."'";
									$text_of_link = substr( $first_match[0], 1, strlen($first_match[0])-2 );
									$a = '<a'.$link_title.' href="option=com_ztautolink&task=redirect&url='.base64_encode($word->url).'" onclick="return hs.htmlExpand(this, { contentId: '.$id.' }); "><span'.$styleOpen.$link_color.$custom_css.$styleClose.'>'.$text_of_link.'</span></a>'; 								
									$div = $this->popupRender($i, $id, $id_number, $target, $nofollow, $word->url, $pluginParams->get('confirm_popup_text'));
									
									$array_replace_link[] = $a;
									$array_replace_div[] = $div;
									$article_text .= 'array_replace_link_'.(count($array_replace_link)-1).'~';
									
									$article_processed_part = substr($article_processed_part, $head_pos+strlen($first_match[0])-1); 
									$i++;
								}
								elseif(count($first_match)==0){
									if($i==0) { //for $word->word which have not any match. 
										$article_text = $article_processed_part; 
									}
									else{ // for $word->word after the end match. 
										$article_text .= $article_processed_part;
									}
									break;
								}
							}
							
							$article_processed_part = $article_text;
						}
						else{
							$article_text = '';
							$i = 0;
							while(strlen($article_processed_part)>0){
								preg_match($_x_word, $article_processed_part, $first_match);
								if(count($first_match)>0){
									$head_pos = strpos($article_processed_part, $first_match[0]);
									$article_text .= substr($article_processed_part, 0, $head_pos+1);
									$text_of_link = substr( $first_match[0], 1, strlen($first_match[0])-2 );
									$a = '<a'.$target.$link_title.$nofollow.' href="index.php?option=com_ztautolink&task=redirect&url='.base64_encode($word->url).'" ><span'.$styleOpen.$link_color.$custom_css.$styleClose.'>'.$text_of_link.'</span></a>';

									$array_replace_link[] = $a;
									$article_text .= 'array_replace_link_'.(count($array_replace_link)-1).'~';
									
									$article_processed_part = substr($article_processed_part, $head_pos+strlen($first_match[0])-1); 
									$i++;
								}
								elseif(count($first_match)==0){
									if($i==0) { //for $word->word which have not any match. 
										$article_text = $article_processed_part; 
									}
									else{ // for $word->word after the end match. 
										$article_text .= $article_processed_part;
									}
									break;
								}
							}
							
							$article_processed_part = $article_text;
						}
					}
					else{
						$article_text = '';
						$i = 0;
						while(strlen($article_processed_part)>0){
							preg_match($_x_word, $article_processed_part, $first_match);
							if(count($first_match)>0){
								$head_pos = strpos($article_processed_part, $first_match[0]);
								$article_text .= substr($article_processed_part, 0, $head_pos+1);
								$text_of_link = substr( $first_match[0], 1, strlen($first_match[0])-2 );
								$a = '<a'.$target.$link_title.$nofollow.' href="'.$word->url.'" ><span'.$styleOpen.$link_color.$custom_css.$styleClose.'>'.$text_of_link.'</span></a>';

								$array_replace_link[] = $a;
								$article_text .= 'array_replace_link_'.(count($array_replace_link)-1).'~';
								
								$article_processed_part = substr($article_processed_part, $head_pos+strlen($first_match[0])-1); 
								$i++;
							}
							elseif(count($first_match)==0){
								if($i==0) { //for $word->word which have not any match. 
									$article_text = $article_processed_part; 
								}
								else{ // for $word->word after the end match. 
									$article_text .= $article_processed_part;
								}
								break;
							}
						}
						
						$article_processed_part = $article_text;
					}
					
					if($position==0)
						$htmlBody = $article_processed_part.$article_nonprocessed_part;
					else if($position==1)
						$htmlBody = $article_nonprocessed_part.$article_processed_part;
					else
						$htmlBody = $article_pre_part.$article_processed_part.$article_nonprocessed_part;
				}
			}
			
			$replace_div_all = '<div class="cfv71mega" style="display:none;">';
			for($i = 0; $i < count($array_replace_div); $i++)
			{
				$replace_div_all .= $array_replace_div[$i];
			} 
			$replace_div_all .= '</div>';
			
			for($i = 0; $i < count($array_replace_link); $i++)
			{
				$str = "array_replace_link_".$i."~";
				$htmlBody = str_replace($str, $array_replace_link[$i], $htmlBody);
			} 
			
			for($i = 0; $i < count($match_acronym_tag[0]); $i++)
			{
				$str = "acronym_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_acronym_tag[0][$i], $htmlBody);
			} 
			
			for($i = 0; $i < count($match_a_tag[0]); $i++)
			{
				$str = "a_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_a_tag[0][$i], $htmlBody);
			} 
				
			for($i = 0; $i < count($match_img_tag[0]); $i++)
			{
				$str = "img_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_img_tag[0][$i], $htmlBody);
			} 
			
			for($i = 0; $i < count($match_input_tag[0]); $i++)
			{
				$str = "input_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_input_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_p_tag[0]); $i++)
			{
				$str = "p_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_p_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_div_tag[0]); $i++)
			{
				$str = "div_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_div_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_ul_tag[0]); $i++)
			{
				$str = "ul_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_ul_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_li_tag[0]); $i++)
			{
				$str = "li_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_li_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_span_tag[0]); $i++)
			{
				$str = "span_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_span_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_h1_tag[0]); $i++)
			{
				$str = "h1_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_h1_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_h2_tag[0]); $i++)
			{
				$str = "h2_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_h2_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_h3_tag[0]); $i++)
			{
				$str = "h3_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_h3_tag[0][$i], $htmlBody);
			}
			
			for($i = 0; $i < count($match_h4_tag[0]); $i++)
			{
				$str = "h4_tag_store_".$i."~";
				$htmlBody = str_replace($str, $match_h4_tag[0][$i], $htmlBody);
			}
			
			preg_match('/<body(.*?)>/si', $htmlBody, $match_body_tag);
			$htmlBody = str_replace($match_body_tag[0], '', $htmlBody);
			
			$htmlBody = $match_body_tag[0].$replace_div_all.$htmlBody;
			$body = $htmlHead.$htmlBody.'</html>';
			
			JResponse::setBody($body);
		}
		return true;
	} 
	
	function popupRender($index, $id, $id_number, $target, $nofollow, $url, $popupText){
		$popupDiv = 
			'<div class="highslide-html-content" id='.$id.' ">
				<div class="highslide-header" style="overflow: hidden;">										
						<ul >
							<li class="highslide-close" style="top:3px; float:right" >
								<a href="#" onclick="return hs.close(this)">Close</a>
							</li>											
						</ul>	    
				</div>
				<p>'.$popupText.'</p>
				<script type="text/javascript">
					function checksubmit'.$id_number.$index.'(){
						if(document.frmConfirm'.$id_number.$index.'.validatesubmit.checked == false) {
							return false;
						}
					}
				</script>
				<form name="frmConfirm'.$id_number.$index.'" method="post" action="index.php?option=com_ztautolink&task=redirect&url='. base64_encode($url).'"  onsubmit="return checksubmit'.$id_number.$index.'();" '.$target.$nofollow.'>
					<input type="checkbox" name="validatesubmit" id="validatesubmit" value="1" style="border:none;" /> <label for="validatesubmit" id="checksubmit" class="requite">I understand that I am leaving.</label>
					
					<br /><br />
					<input type="submit" class="button" value="View Website" />
				</form>
			</div>';
				
		return $popupDiv;
	}
	
	function hsSettings($pluginParams){
		global $mainframe;
		$document =& JFactory::getDocument();
		$hs_base = JURI::base().'plugins/system';
		$document->addStyleSheet($hs_base.'/zt_autolink_system/css/highslide-styles.css');
		$document->addStyleSheet($hs_base.'/zt_autolink_system/css/highslide.css');
		$document->addScript($hs_base."/zt_autolink_system/js/highslide-full.js");
		$document->addScript($hs_base."/zt_autolink_system/js/highslide.config.js");
		$document->addScriptDeclaration("hs.graphicsDir = '".$hs_base."/zt_autolink_system/graphics/'; hs.showCredits = false; ");
	}
	
}