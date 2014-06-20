<?php
/**
 * SmartFormer - Form Builder for Joomla 1.5.x websites
 * Copyright (C) 2006-2010 IToris Co.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see http://www.gnu.org/licenses/
 *
 * The "GNU General Public License" (GPL) is available at
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * -----------------------------------------------------------------------------
 * @package SmartFormer
 * @version 2.4.1 (J1.5 security fix)
 * @author The SmartFormer project (http://www.itoris.com/joomla-form-builder-smartformer.html)
 * @copyright IToris Co. 2006-2010
 * @license GNU GPL
 *
*/

// no direct access
if (!defined( '_VALID_MOS' ) && !defined( '_JEXEC' )) die( 'Restricted access' );
if( defined('_JEXEC') ) {
    jimport('phpmailer.phpmailer');
} else {
    global $sf_absolute_path;
	require_once( $sf_absolute_path . '/includes/phpmailer/class.phpmailer.php' );
}

define("SF_OBJ_ID",0);
define("SF_OBJ_TYPE",2);

function unhtmlentities($string)
{
    $trans_tbl = get_html_translation_table(HTML_ENTITIES);
    $trans_tbl = array_flip($trans_tbl);
    return strtr($string, $trans_tbl);
}




class SmartformerEngine {

	var $_hash;

	var $_subject;

	var $_database;

	var $_objs;

	function render($pfid=0) {
		global $database, $sf_live_site , $mainframe;
		$this->_hash = $hash = md5(uniqid(time()+microtime()));
		if (!session_id()) session_start();

		//$page='http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

		$form_unic=rand();

		if (defined( '_JEXEC' )) $user =& JFactory::getUser(); else { global $my; $user=$my; }

		if (isset ($_REQUEST['Itemid'])) $Itemid=intval($_REQUEST['Itemid']); else $Itemid=0;
		if (isset ($_REQUEST['form_page'])) $form_page=intval($_REQUEST['form_page']); else $form_page=0;

		if (defined( '_JEXEC' )) {
			$database=& JFactory::getDBO();
			//$GLOBALS['DOCUMENT_ROOT']=$_SERVER['DOCUMENT_ROOT'];
			$GLOBALS['sf_live_site']=substr(JURI::root(),0,strlen(JURI::root())-1);
			$sf_live_site=$GLOBALS['sf_live_site'];
			$GLOBALS['sf_absolute_path']=substr(__FILE__,0,strpos(strtolower(__FILE__),'components')-1);
		}
		$this->_database = &$database;
		$query = "SELECT params FROM #__menu where id=$Itemid";
		$database->setQuery( $query );
		$formid = $database->loadResult();
		$formid = intval(substr($formid,7));
		if ($formid==0 && isset($_REQUEST['formid'])) $formid = intval($_REQUEST['formid']);
		if ($pfid>0) $formid=$pfid;
		if ($formid>0) {
			$query = "SELECT * FROM #__smartformer_forms where id=$formid";
			$database->setQuery( $query );
			$rows = $database->loadObjectList();
			$row = &$rows[0];
		}
		if (  isset($_REQUEST['form']) && $_REQUEST['form']!='' ){//new
			$hash_form = $_REQUEST['form'];
			$this->_hash = $hash = $hash_form;
			$query = "SELECT * FROM #__smartformer_data where hash='$hash_form'";
			$database->setQuery( $query );
			$data_form_obj = $database->loadObjectList();
			$data_form =&$data_form_obj[0];
			$data_form= get_object_vars($data_form);
            $allow = true;
            if( !isset( $data_form['id'] ) ) {
                $allow = false;
            } else {
                if( $data_form['status'] == 0 ) {
                    $allow = false;
                }
            }
            if( $allow ) {
			$data_form['data']= explode('{~-SePaRaT0R-~}',$data_form['data']);
			$data_form_copy= Array();
			foreach($data_form['data'] as $value){
				preg_match('#(.*[^(?:=>)])(?:=>)(.*)#ixs',$value,$result);
      				if( sizeof($result) > 2 ) {
				$data_form_copy+=array($result[1]=>$result[2]);
			}
      			}
			$data_form['data']= $data_form_copy;
			$formid= $data_form['form_id'];
			$query = "SELECT * FROM #__smartformer_forms where id=$formid";
			$database->setQuery( $query );
			$rows = $database->loadObjectList();
			$row = &$rows[0];
            }
		}//new
		$message=''; $enable_user_notif=false;

		if (isset($_POST['control_id']) && isset($_SESSION['smartformer'][$formid]['page'])) {
			if ($form_page==$_SESSION['smartformer'][$formid]['page']) {
				if (isset ($_REQUEST['control_id'])) $control_id=intval($_REQUEST['control_id']); else $control_id=0;
				$objs=explode('~',$row->element_to_page);
				foreach ($objs as $value) {
					$obj=explode('|',$value);
					for ($i=1; $i<40; $i++) if (!isset($obj[$i])) $obj[$i]='';
					if (isset($obj[1]) && $obj[1]==$_SESSION['smartformer'][$formid]['page']) {
						if (intval($obj[23])>0 && $obj[2]>0) {$_SESSION['smartformer'][$formid]['submitter_email']='c_form_element'.intval($obj[23]); $enable_user_notif=true;}
						if ($obj[2]==4) $name='c_form_group'.$obj[12]; else $name='c_form_element'.$obj[0];
						if ($obj[2]==13) {
							if (isset($_FILES[$name]) && isset($_FILES[$name]['error']) && $_FILES[$name]['error']==0) {
								if (file_exists($_FILES[$name]['tmp_name'])) {
									move_uploaded_file($_FILES[$name]['tmp_name'], $GLOBALS['sf_absolute_path'].'/components/com_smartformer/files/'.$_SESSION['smartformer'][$formid]['uniq_id'].'-'.$name);
									$_SESSION['smartformer'][$formid]['data'][$name]=$_FILES[$name]['name'].'|'.$_SESSION['smartformer'][$formid]['uniq_id'].'-'.$name;
								}
							} else if (!isset($_SESSION['smartformer'][$formid]['data'][$name])) $_SESSION['smartformer'][$formid]['data'][$name]='';
						} else if (isset($_POST[$name])) $_SESSION['smartformer'][$formid]['data'][$name]=$_POST[$name]; else $_SESSION['smartformer'][$formid]['data'][$name]='';
						if ($obj[2]==12) $sec_image_field=$obj[21];
					}
					if ($obj[0]==$control_id) {$form_action=$obj[4]; $form_redirect=$obj[14]; $save_data=$obj[5]; $email_data=$obj[6]; $email_to=$obj[15]; $jump_to=$obj[24];}
				}
				if (isset($sec_image_field) && isset($_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field]) && $_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field]=='') {
					$database->setQuery( 'select value from #__smartformer_settings where variable="secret_mandatory"' );
					$msg = htmlspecialchars($database->loadResult());
					$message.='<b style="color:red;">'.$msg.'</b><br>';
					$_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field]='';
				} else if (isset($sec_image_field) && isset($_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field]) && isset($_SESSION['smartformer']['sec_code'][$formid]) && strtolower($_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field])!=strtolower($_SESSION['smartformer']['sec_code'][$formid]['code'])) {
					$database->setQuery( 'select value from #__smartformer_settings where variable="secret_incorrect"' );
					$msg = htmlspecialchars($database->loadResult());
					$message.='<b style="color:red;">'.$msg.'</b><br>';
					$_SESSION['smartformer'][$formid]['data']['c_form_element'.$sec_image_field]='';
				}
				if (!isset($form_action)) $form_action=0;
				if ($form_action==2 || $form_action==5) $message='';
				if ($message!='') {$form_action=0; unset($save_data); unset($email_data); }
				if ($form_action==1 && $_SESSION['smartformer'][$formid]['page']<10) $_SESSION['smartformer'][$formid]['page']++;
				if ($form_action==2 && $_SESSION['smartformer'][$formid]['page']>1) $_SESSION['smartformer'][$formid]['page']--;
				if ($form_action==4 && $jump_to>=1 && $jump_to<=10) $_SESSION['smartformer'][$formid]['page']=$jump_to;
			}
		} else {
			if(isset($_REQUEST['form']) && $_REQUEST['form']!=='' ){//new
				$_SESSION['smartformer'][$formid]=array('page'=>1);
				$_SESSION['smartformer'][$formid]['data']=$data_form['data'];//new
				$_SESSION['smartformer'][$formid]['uniq_id']=$data_form['rand'];
				$_SESSION['smartformer'][$formid]['submitter_email']='';
			}else{
			$_SESSION['smartformer'][$formid]=array('page'=>1);
			$_SESSION['smartformer'][$formid]['data']=Array();
			$_SESSION['smartformer'][$formid]['uniq_id']=rand(0,1000000);
			$_SESSION['smartformer'][$formid]['submitter_email']='';
		}

		}

		if (isset($row->status) && $row->status==1 && $formid>0) {
			switch ($_SESSION['smartformer'][$formid]['page']) {
				case 2: $page_html=$row->data2; break;
				case 3: $page_html=$row->data3; break;
				case 4: $page_html=$row->data4; break;
				case 5: $page_html=$row->data5; break;
				case 6: $page_html=$row->data6; break;
				case 7: $page_html=$row->data7; break;
				case 8: $page_html=$row->data8; break;
				case 9: $page_html=$row->data9; break;
				case 10: $page_html=$row->data10; break;
				default: $page_html=$row->data1; break;
			}
//			$page_html = preg_replace('/<br>/',"\n",$page_html);
			$events = array ('onmouseup=','onmousemove=','onmousedown=','onmouseover=','onmouseout=','onclick=');
			$cursors = array ('cursor:','visibility:','border-','border:');

			$page_html2=strtolower($page_html);
			foreach ($events as $value) {
				$o=strpos($page_html2,$value);
				while ($o!==false) {
					$o1=strpos($page_html2,')',$o);
					if (substr($page_html2,$o1+1,1)=='"' || substr($page_html2,$o1+1,1)=="'") $o1++;
					if (substr($page_html2,$o1+1,1)=='>') $o1--;
					//print_r(substr($page_html2,$o,$o1-$o+2).' ');
					//$page_html2=substr($page_html2,0,$o).substr($page_html2,$o1+2);
					//$page_html=substr($page_html,0,$o).substr($page_html,$o1+2);
					$page_html2=str_replace(substr($page_html2,$o,$o1-$o+2),'',$page_html2);
					$page_html=str_replace(substr($page_html,$o,$o1-$o+2),'',$page_html);
					$o=strpos($page_html2,$value);
				}
			}
			foreach ($cursors as $value) {
				$o=strpos($page_html2,$value);
				while ($o!==false) {
					$o1=strpos($page_html2,';',$o)+1;
					$o2=strpos($page_html2,'"',$o);
					if ($o1===false || $o1<$o || $o1>$o && $o2>$o && $o2<$o1) $o1=$o2;
					if ($o1<$o) exit; // unknown html format
					//print_r(substr($page_html2,$o,$o1-$o).' ');
					//$page_html2=substr($page_html2,0,$o).substr($page_html2,$o1);
					//$page_html=substr($page_html,0,$o).substr($page_html,$o1);
					$page_html2=str_replace(substr($page_html2,$o,$o1-$o),'',$page_html2);
					$page_html=str_replace(substr($page_html,$o,$o1-$o),'',$page_html);
					$o=strpos($page_html2,$value);
				}
			}

			$objs=explode('~',$row->element_to_page);
			$this->_objs = $objs;
			$scr=""; $scr2=""; $scr3=""; $scr4=""; $email_msg=""; $names=array(); $maxy=0; $maxx=0; $k=0;
			foreach ($objs as $value) {
				$obj=explode('|',$value);
				if (isset($obj[2])) { if ($obj[2]==4) $name='c_form_group'.$obj[12]; else $name='c_form_element'.$obj[0]; } else $name="";
				if (isset($obj[1]) && $obj[1]==$_SESSION['smartformer'][$formid]['page']) {
					for ($i=2; $i<=30; $i++) if (!isset($obj[$i])) $obj[$i]='';
					if ($obj[17]+$obj[19]+10>$maxx && $obj[2]>0) $maxx=$obj[17]+$obj[19]+10;
					if ($obj[18]+$obj[20]+10>$maxy && $obj[2]>0) $maxy=$obj[18]+$obj[20]+10;
					if ($obj[2]==12) {
						if ($obj[16]==1) {
							require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/alikon/captcha.php');
							$captcha = new alikoncaptcha() ;
							$captcha->codelength = 6;
							$captcha->captchacode($formid,$obj[19],$obj[20]);
							//$image = $captcha->image() ;
							$scr4.='if (document.mform'.$form_unic.'.captcha!=null) document.mform'.$form_unic.'.captcha.src="'.$GLOBALS['sf_live_site'].'/index.php?option=com_smartformer"+String.fromCharCode(38)+"task=captcha"+String.fromCharCode(38)+"formid='.$formid.'";'."\n";
							$scr3.=$scr4;
						}
						if ($obj[16]==2) {
							if (version_compare(phpversion(), "5.0.0", ">=")) require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform/captchaform5.php');
							else require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform/captchaform4.php');
							$captcha = new captchaform();
							$captcha->session = "captchaform";
							$captcha->codelength = 6;
							$captcha->captchacode($formid,$obj[19],$obj[20]);
							$scr4.='if (document.mform'.$form_unic.'.captcha!=null) document.mform'.$form_unic.'.captcha.src="'.$GLOBALS['sf_live_site'].'/index.php?option=com_smartformer"+String.fromCharCode(38)+"task=captcha"+String.fromCharCode(38)+"formid='.$formid.'";'."\n";
							$scr3.=$scr4;
						}
						if ($obj[16]==3) {
							require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/securimage/securimage.php');
							$img = new securimage();
							$img->captchacode($formid,$obj[19],$obj[20]);
							$scr4.='if (document.mform'.$form_unic.'.captcha!=null) document.mform'.$form_unic.'.captcha.src="'.$GLOBALS['sf_live_site'].'/index.php?option=com_smartformer"+String.fromCharCode(38)+"task=captcha"+String.fromCharCode(38)+"formid='.$formid.'";'."\n";
							$scr3.=$scr4;
						}
					}
					if ($obj[8]>0 || $obj[7]>0 || $obj[22]>0) $scr2.='doValidation('.$obj[0].','.$obj[8].',"'.$obj[3].'",'.$obj[2].','.$obj[7].',document.mform'.$form_unic.'.c_form_element'.$obj[22].',document.mform'.$form_unic.'.'.(($obj[2]==4 || $obj[2]==5)?'i':'c').'_form_element'.$obj[0].');'."\n";
					if ($obj[2]==4) {
						$objs2=explode('~',$row->groups);
						foreach ($objs2 as $value2) {
							$obj2=explode('|',$value2);
							if ($obj2[0]==$obj[12] && $obj2[3]==1) $scr2.='doValidation('.$obj[0].','.$obj[8].',"'.$obj[3].'",'.$obj[2].','.$obj2[3].',document.mform'.$form_unic.'.c_form_group'.$obj2[0].',document.mform'.$form_unic.'.i_form_element'.$obj[0].');'."\n";
						}

					}
					if (isset($_SESSION['smartformer'][$formid]['data'][$name])) {
						if (($obj[2]==4 || $obj[2]==5) && $_SESSION['smartformer'][$formid]['data'][$name]!='') $scr3.='document.mform'.$form_unic.'.'.$_SESSION['smartformer'][$formid]['data'][$name].'.checked=true;'."\n";
						if ($obj[2]==1 || $obj[2]==3) $scr3.='document.mform'.$form_unic.'.c_form_element'.$obj[0].'.value="'.preg_replace(array('/@/','/\r/','/\n/'),array('@"+"','','\\n'),$_SESSION['smartformer'][$formid]['data'][$name]).'";'."\n";
						if ($obj[2]==6 || $obj[2]==7) {
							$obj2=explode(',',$_SESSION['smartformer'][$formid]['data'][$name]);
							$scr3.='document.mform'.$form_unic.'.c_form_element'.$obj[0].'.selectedIndex="'.$obj2[0].'";'."\n";
						}
					}
					$o=strpos($page_html2,'c_form_element'.$obj[0].'"');
					if ($o===false) $o=strpos($page_html2,'c_form_element'.$obj[0].' ');
					if ($o>0) {
						while ($o>0 && substr($page_html,$o,1)!='<') $o--;
						$o1=strpos($page_html2,'style=',$o);
//						if ($obj[2]==1 || $obj[2]==2 || $obj[2]==3 || $obj[2]==6 || $obj[2]==7 || $obj[2]==8 || $obj[2]==13)
						$page_html=substr($page_html,0,$o1+7).(($obj[2]==11)?' cursor:pointer; ':'').' border-style:'.$obj[11].'; border-width:'.$obj[9].'; border-color:'.$obj[10].'; '.preg_replace(array('/\%7E/','/\%7F/','/\%7G/'),array('~','|',' '),$obj[27]).substr($page_html,$o1+7);
						$page_html2=substr($page_html2,0,$o1+7).(($obj[2]==11)?' cursor:pointer; ':'').' border-style:'.$obj[11].'; border-width:'.$obj[9].'; border-color:'.$obj[10].'; '.preg_replace(array('/\%7E/','/\%7F/','/\%7G/'),array('~','|',' '),$obj[27]).substr($page_html2,$o1+7);
					}
					$o=strpos($page_html2,'c_form_element'.$obj[0].'"');
					if ($o===false) $o=strpos($page_html2,'c_form_element'.$obj[0].' ');
					if ($o>0) {
						$o1=strpos($page_html,'>',$o);
						$page_html=substr($page_html,0,$o1).' '.preg_replace(array('/\%7E/','/\%7F/','/\%7G/'),array('~','|',' '),$obj[28]).substr($page_html,$o1);
						$page_html2=substr($page_html2,0,$o1).' '.preg_replace(array('/\%7E/','/\%7F/','/\%7G/'),array('~','|',' '),$obj[28]).substr($page_html2,$o1);
					}
					if ($obj[8]>0) { //put flow validation
						$o=strpos($page_html2,'c_form_element'.$obj[0].'"');
						if ($o===false) $o=strpos($page_html2,'c_form_element'.$obj[0].' ');
						if ($o>0) {
							$o1=strpos($page_html,'>',$o);
							$page_html=substr($page_html,0,$o1).' onblur="'.$this->getValidator($obj[8],$form_unic).'" '.substr($page_html,$o1);
							$page_html2=substr($page_html2,0,$o1).' onblur="'.$this->getValidator($obj[8],$form_unic).'" '.substr($page_html2,$o1);
						}
					}
					if (isset($obj[4]) && $obj[4]>0) {
						$o=strpos($page_html2,'c_form_element'.$obj[0].'"');
						if ($o===false) $o=strpos($page_html2,'c_form_element'.$obj[0].' ');
						if ($o>0) {
							$o1=strpos($page_html,'>',$o);
							if ($obj[4]==6) {
								$page_html=substr($page_html,0,$o1).' onclick="reset_form'.$form_unic.'()" '.substr($page_html,$o1);
								$page_html2=substr($page_html2,0,$o1).' onclick="reset_form'.$form_unic.'()" '.substr($page_html2,$o1);
							}
							if ($obj[4]==7 && $obj[25]>0 && $obj[26]>0) {
								$page_html=substr($page_html,0,$o1).' onclick="showCalendar(document.mform'.$form_unic.'.c_form_element'.$obj[25].','.$obj[26].')" '.substr($page_html,$o1);
								$page_html2=substr($page_html2,0,$o1).' onclick="showCalendar(document.mform'.$form_unic.'.c_form_element'.$obj[25].','.$obj[26].')" '.substr($page_html2,$o1);
							}
							if ($obj[4]==8) {
								$page_html=substr($page_html,0,$o1).' onclick="print_form'.$form_unic.'(this.id)" '.substr($page_html,$o1);
								$page_html2=substr($page_html2,0,$o1).' onclick="print_form'.$form_unic.'(this.id)" '.substr($page_html2,$o1);
							}
							if ($obj[4]<6 && $obj[4]>0) {
                                if (isset($obj[29]) AND $obj[29]==1) {
									$page_html=substr($page_html,0,$o1).' onclick="form_element_click_disable_validation'.$form_unic.'('.$obj[0].')" '.substr($page_html,$o1);
									$page_html2=substr($page_html2,0,$o1).' onclick="form_element_click_disable_validation'.$form_unic.'('.$obj[0].')" '.substr($page_html2,$o1);
                                } else {
									$page_html=substr($page_html,0,$o1).' onclick="form_element_click'.$form_unic.'('.$obj[0].')" '.substr($page_html,$o1);
									$page_html2=substr($page_html2,0,$o1).' onclick="form_element_click'.$form_unic.'('.$obj[0].')" '.substr($page_html2,$o1);
                               	}
								$scr.='if (value=='.$obj[0].') { document.mform'.$form_unic.'.control_id.value="'.$obj[0].'"; if (document.mform'.$form_unic.'.action=="") document.mform'.$form_unic.'.action=document.location.href; if (!bool) document.mform'.$form_unic.'.submit(); else bool=false;}'."\n";
							}
						}
					}

				}
				if (isset($obj[2]) && ($obj[2]<=7 || $obj[2]==13)  && isset($_SESSION['smartformer'][$formid]['data'][$name]) && $_SESSION['smartformer'][$formid]['data'][$name]!='') {
					if (!isset($names[$name])) {
						$names[$name]=$_SESSION['smartformer'][$formid]['data'][$name];
						if ($obj[2]==4) {
							$objs2=explode('~',$row->groups);
							$title2 = '';
							$title = '';
							foreach ($objs2 as $value2) {
								$obj2=explode('|',$value2);
								if ($obj2[0]==$obj[12]) $title=$obj2[2];
							}
							foreach ($objs as $value) {
								$obj2=explode('|',$value);
								if ($obj2[0]==intval(substr($_SESSION['smartformer'][$formid]['data'][$name],14))) $title2=$obj2[3];
							}
						} else $title=$obj[3];
						$c=' style="background:#'.(($k==0)?'EEEEEE':'DDDDDD').'"';
						if ($obj[2]==5) $email_msg.='<tr'.$c.'><td align="left"><b style="color:#0000FF">'.htmlspecialchars($title).': </b></td><td align="left"><b>checked</b></td></tr>'; else
						if ($obj[2]==4) $email_msg.='<tr'.$c.'><td align="left"><b style="color:#0000FF">'.htmlspecialchars($title).': </b></td><td align="left"><b>'.$title2.'</b></td></tr>'; else
						if (($obj[2]==6 || $obj[2]==7) && strpos($_SESSION['smartformer'][$formid]['data'][$name],',')!==false) $email_msg.='<tr'.$c.'><td align="left"><b style="color:#0000FF">'.htmlspecialchars($title).': </b></td><td align="left"><b>'.htmlspecialchars(substr($_SESSION['smartformer'][$formid]['data'][$name],strpos($_SESSION['smartformer'][$formid]['data'][$name],',')+1)).'</b></td></tr>'; else
						if (($obj[2]==13) && strpos($_SESSION['smartformer'][$formid]['data'][$name],'|')!==false) $email_msg.='<tr'.$c.'><td align="left"><b style="color:#0000FF">'.htmlspecialchars($title).': </b></td><td align="left"><b>'.htmlspecialchars(substr($_SESSION['smartformer'][$formid]['data'][$name],0,strpos($_SESSION['smartformer'][$formid]['data'][$name],'|'))).'</b></td></tr>'; else
							$email_msg.='<tr'.$c.'><td align="left"><b style="color:#0000FF">'.htmlspecialchars($title).': </b></td><td align="left"><b>'.htmlspecialchars($_SESSION['smartformer'][$formid]['data'][$name]).'</b></td></tr>';
						$k=1-$k;
					}
				}

			}
			if( $email_msg ) {
			    $email_msg = '<table>'.$email_msg.'</table>';
			}
			$email_msg=stripslashes(preg_replace(array('/\r/','/\n/'),array('','<br>'),$email_msg));
			$prev_msg=$email_msg;

			$submitter_email='';
			if (isset($_SESSION['smartformer'][$formid]['data'][$_SESSION['smartformer'][$formid]['submitter_email']])) $submitter_email=$_SESSION['smartformer'][$formid]['data'][$_SESSION['smartformer'][$formid]['submitter_email']];

			if (isset($email_data) && $email_data==1) {
				$database->setQuery( 'select now()' );
				$datetime = $database->loadResult();
				$row_admin=explode("{~-SePaRaT0R-~}", $row->admin_template);

				// user Default copy $email_msg
				$email_msg_user=$email_msg;

				// trigger Email template type: Default or Custom
				if (isset($row_admin[8]) AND $row_admin[8]==1) $email_msg=$email_msg; //Default
				if ((isset($row_admin[8]) AND $row_admin[8]==2) OR (!isset($row_admin[8]))) { //Custom, if not empty
					$email_msg=@$row_admin[7]?$row_admin[7]:$email_msg;
				}
    			if (defined( '_JEXEC' )) {
					$cfg = new JConfig();
					$email_from=@$row_admin[3]?$row_admin[3]:$cfg->mailfrom;
    				$name_from=@$row_admin[2]?$row_admin[3]:$cfg->fromname;
						    } else {
					global $mosConfig_mailfrom, $mosConfig_fromname;
					$email_from=@$row_admin[3]?$row_admin[3]:$mosConfig_mailfrom;
    				$name_from=@$row_admin[2]?$row_admin[2]:$mosConfig_fromname;
				}
				$this->_subject = $subject=@$row_admin[4]?$row_admin[4]:'Form: '.$row->name.'. Data has been submitted';
				$cc=@$row_admin[5];
				$bcc=@$row_admin[6];
				$email_format=@$row_admin[1];

    			if (isset($email_to)) { // send admin mail
       				list($email_msg,$headers) = $this->parseMailTemplate($row,$user,$formid,$email_format,$name_from,$email_from,$cc,$bcc,$email_msg);
       				// email format
                    $database->setQuery("SELECT admin_template FROM #__smartformer_forms where id=".$formid);
                    $admin_template=$database->loadResult();
					$admin_template = explode ("{~-SePaRaT0R-~}", $admin_template);
                    if (isset($admin_template[1])) $email_format_admin=intval($admin_template[1]); else $email_format_admin=2;

                    if ( defined('_JEXEC') ) {
                        $mailer =& JFactory::getMailer();
                        if (isset($submitter_email) && $submitter_email!='') $mailer->setSender(array($submitter_email, $submitter_email));
                        else $mailer->setSender(array($mainframe->getCfg('mailfrom'), $mainframe->getCfg('fromname')));
                        $mailer->setSubject($subject);
                        $mailer->setBody($email_msg);
                        $mailer->IsHTML(2-$email_format_admin); //2-$row->email_format
                        $mailer->addRecipient($email_to);
                        foreach ($_SESSION['smartformer'][$formid]['data'] as $value3) if (strpos($value3,'|'.$_SESSION['smartformer'][$formid]['uniq_id'].'-')!==false) {
                            $file=explode('|',$value3);
                            $file1=$GLOBALS['sf_absolute_path'].'/components/com_smartformer/files/'.$file[1];
                            $file2=$GLOBALS['sf_absolute_path'].'/components/com_smartformer/files/'.$file[0];
                            if (file_exists($file1) && copy($file1,$file2)) $mailer->addAttachment($file2);
						}
                        $mailer->Send();
					} else {
                        $attachments=array();
                        foreach ($_SESSION['smartformer'][$formid]['data'] as $value3) if (strpos($value3,'|'.$_SESSION['smartformer'][$formid]['uniq_id'].'-')!==false) {
                            $file=explode('|',$value3);
                            $file1=$GLOBALS['sf_absolute_path'].'/components/com_smartformer/files/'.$file[1];
                            $file2=$GLOBALS['sf_absolute_path'].'/components/com_smartformer/files/'.$file[0];
                            if (file_exists($file1) && copy($file1,$file2)) $attachments[]=$file2;
						}
                        mosMail( $submitter_email, $submitter_email, $email_to, $subject, $email_msg, 2-$email_format_admin, NULL, NULL, $attachments );
 					}
				}
    		}

			// send e-mail user
			//  && trim($row->message)!=''  trim($row->subject)!='' &&
			if (isset($form_action) && $form_action>0 && $email_data==1 && $form_action<5 && $enable_user_notif && $submitter_email!='' && trim($row->fromemail)!='' && $row->enable_notif==1) {
				$database->setQuery( 'select now()' );
				$datetime = $database->loadResult();
				$email_msg=$row->message;
				if (trim($email_msg)=="") $email_msg=$email_msg_user; // if not custom -> default
				$this->_subject = $subject=$row->subject;
				$email_from=$row->fromemail;
				$email_format = $row->email_format;
				$name_from=$row->fromname;
				$cc=$row->cc;
				$bcc=$row->bcc;
				list($email_msg,$headers) = $this->parseMailTemplate($row,$user,$formid,$email_format,$name_from,$email_from,$cc,$bcc,$email_msg);
               if ( defined('_JEXEC') ) {
                   $mailer =& JFactory::getMailer();
                   if (isset($email_from) && $email_from!='' && isset($name_from) && $name_from!='') $mailer->setSender(array($email_from, $name_from));
                   else $mailer->setSender(array($mainframe->getCfg('mailfrom'), $mainframe->getCfg('fromname')));
                   $mailer->setSubject($subject);
                   $mailer->setBody($email_msg);
                   $mailer->addCC($cc);
                   $mailer->addBCC($bcc);
                   $mailer->IsHTML(2-$row->email_format);
                   $mailer->addRecipient($submitter_email);
                   $mailer->Send();
				} else {
                   mosMail( $email_from, $name_from, $submitter_email, $subject, $email_msg, 2-$row->email_format, ((trim($cc)!='')?$cc:NULL), ((trim($bcc)!='')?$bcc:NULL) );
				}
			}

			if (isset($save_data) && $save_data==1) {
				if(isset($_REQUEST['form'])){
				$query = 'select id from #__smartformer_data where hash="'.$_REQUEST['form'].'"';
				}else{
				$query = 'select id from #__smartformer_data where rand="'.$_SESSION['smartformer'][$formid]['uniq_id'].'"';
				}
				$database->setQuery( $query );
				$total = intval($database->loadResult());
				$data='';
				$database->setQuery( 'select now()' );
				$datetime = $database->loadResult();
				$data.='datetime_system=>'.$datetime.'{~-SePaRaT0R-~}';
				if ($user->id>0) $data.='username_system=>'.$user->username.' ('.$user->id.')'.'{~-SePaRaT0R-~}'; else $data.='username_system=>site visitor{~-SePaRaT0R-~}';
				$data.='ip_system=>'.getenv("REMOTE_ADDR").'{~-SePaRaT0R-~}';
				foreach ($_SESSION['smartformer'][$formid]['data'] as $key => $value) $data.=$key.'=>'.$value.'{~-SePaRaT0R-~}';
				if ($total==0) {
					$query = "insert into #__smartformer_data set datetime=now(), hash='$hash', form_id=$formid, rand=".$_SESSION['smartformer'][$formid]['uniq_id'].', data="'.addcslashes($data,'"\\').'"';//new
					$database->setQuery( $query );
					$total = $database->query();
					$query = 'update #__smartformer_data set rand="" where now()-datetime>3600';
					$database->setQuery( $query );
					$total = $database->query();
				} else {
					$query = 'update #__smartformer_data set datetime=now(), form_id='.$formid.', data="'.addcslashes($data,'"\\').'" where id='.$total;
					$database->setQuery( $query );
					$total = $database->query();
				}
			}
			if (isset($form_action) && $form_action==3) {
				$_SESSION['smartformer'][$formid]=array();
				@ob_end_clean(); // clear output buffer
				header( 'HTTP/1.1 301 Moved Permanently' );
				header( "Location: http://". $form_redirect );
				exit;
			}
			$page_html.='<input type="hidden" id="control_id" name="control_id">';
			$page_html.='<input type="hidden" id="form_page" name="form_page" value="'.$_SESSION['smartformer'][$formid]['page'].'">';
			$page_html.="<link rel='stylesheet' type='text/css' media='all' href='".$sf_live_site."/components/com_smartformer/calendar/calendar-mos.css' title='green' />\n";
			if ($scr3!="" || $scr!="") {
				$page_html.="\n<script>\n";
				if ($scr3!="") $page_html.=$scr3;
				if ($scr!="") {
					$page_html.="function form_element_click".$form_unic."(value) {\n".$scr2.$scr."}\n";
					$page_html.="function form_element_click_disable_validation".$form_unic."(value) {\n".$scr."}\n";
				}
				$page_html.="</script>\n";
			}
			$page_html.="\n<script>\n document.getElementById('freset".$form_unic."').value=document.getElementById('mform".$form_unic."').innerHTML;\n function reset_form".$form_unic."() {document.getElementById('mform".$form_unic."').innerHTML=document.getElementById('freset".$form_unic."').value; ".$scr4."}\n";
			$database->setQuery( 'select value from #__smartformer_settings where variable="print_preview"' );
			$print_preview = htmlspecialchars(addcslashes($database->loadResult(),'"\\'));
			$print_fix = <<<PRINTFIX
var aItems = oNewDoc.document.getElementsByTagName('input');
for( var i = 0 ; i < aItems.length ; ++i ) {
    var oItm = aItems[i];
    if(oItm && oItm.id) {
        var oElement = document.getElementById(oItm.id);
        switch( oItm.getAttribute('type') ) {
            case 'checkbox':
            case 'radio':
                if(oElement.checked) {
                    oItm.checked = true;
                }
                break;
            default:
               oItm.value = oElement.value;
        }
    }
}
aItems = oNewDoc.document.getElementsByTagName('textarea');
for( var i = 0 ; i < aItems.length ; ++i ) {
    var oItm = aItems[i];
    if( oItm && oItm.id ) {
        aItems[i].value = document.getElementById(oItm.id).value;
    }
}
aItems = oNewDoc.document.getElementsByTagName('select');
for( var i = 0 ; i < aItems.length ; ++i ) {
    var oItm = aItems[i];
    var aOptions = oItm.getElementsByTagName('option');
    var oElement = document.getElementById(oItm.id);
    var aCoOptions = oElement.getElementsByTagName('option');;
    for( var j = 0 ; j < aOptions.length ; ++j ) {
        if( aOptions[j].value == aCoOptions[j].value && aCoOptions[j].selected ) {
            aOptions[j].selected = true;
        }
    }
}
PRINTFIX;

			$page_html.="function print_form$form_unic(cnt){\n".'var oNewDoc = open("about:blank", "_blank", "channelmode=no, directories=no, fullscreen=no, location=no, menubar=no, resizable=yes, scrollbars=yes, status=no, titlebar=yes, toolbar=no, height='.($maxy+40).', width='.($maxx+40).', left=50, top=50,"); var sMarkup = "<HTML><HEAD><TITLE>'.$print_preview
			.'</TITLE><BODY>"+document.getElementById("cont'.$form_unic.'").innerHTML+"</BODY></HTML>"; if (oNewDoc) {oNewDoc.document.write(sMarkup); oNewDoc.document.close(); oNewDoc.document.getElementById(cnt).style.visibility="hidden"; oNewDoc.print();';
			$page_html.=$print_fix.' }}'."\n</script>";
			$page_html.="<script>\n".$this->outputMessage($form_unic)."</script>";
			$page_html.="<script src='".$sf_live_site."/components/com_smartformer/calendar/calendar.js'></script>\n";
			$page_html.="<script src='".$sf_live_site."/components/com_smartformer/calendar/lang/calendar-en.js'></script>\n";
			// '.$page.'
			$page_html="\n".'<input type="hidden" id="freset'.$form_unic.'"><form id="mform'.$form_unic.'" name="mform'.$form_unic.'" enctype="multipart/form-data" method="post" action="">'."\n".$page_html."\n".'<input type="hidden" name="unic_id" value='.$form_unic.'></form>'."\n";
			$page_html = ((trim($row->css_list)!='')?"\n<style>\n".$row->css_list."\n</style>\n":'').'<table border="0" cellpadding="0" cellspacing="0" style="height:'.($maxy+10).'px; width:'.($maxx+10).'px;"><tr><td id="cont'.$form_unic.'" align="left" valign="top"><div style="position:absolute; height:'.($maxy+10).'px; width:'.($maxx+10).'px;">'.$page_html.'<div id="flow_msg'.$form_unic.'" style="background:#000000; color:#FFFFFF; position:absolute; visibility:hidden; width:250px; padding:1px 5px 1px 5px; z-index:20"></div></div></td></tr></table>';
			if ($message!='') $page_html=$message.$page_html;
			if (isset($form_action) && $form_action==5) {
				$database->setQuery( 'select value from #__smartformer_settings where variable="form_preview"' );
				$form_preview = htmlspecialchars(addcslashes($database->loadResult(),'"\\'));
				$database->setQuery( 'select value from #__smartformer_settings where variable="close_window"' );
				$close_window = htmlspecialchars(addcslashes($database->loadResult(),'"\\'));
				$s='<script>var oNewDoc = open("about:blank", "_blank", "channelmode=no, directories=no, fullscreen=no, location=no, menubar=no, resizable=yes, scrollbars=yes, status=no, titlebar=yes, toolbar=no, height=500, width=500, left=100, top=100,"); var sMarkup = "<HTML><HEAD><TITLE>'.$form_preview.'</TITLE><BODY><h3>'.$form_preview.'</h3><table cellpadding=3 cellspacing=0 border=0 width=100%>';
				$s.=addcslashes($prev_msg,'"\\');
				$s.='<tr><td colspan=2 align=right><b style=\"color:blue; cursor:pointer; font-family:Arial; font-size:14px;\" onclick=\"window.close();\">'.$close_window.'</b></td></tr>';
				$s.='</table></BODY></HTML>"; if (oNewDoc) {oNewDoc.document.write(sMarkup); oNewDoc.document.close();} </script>';
				$page_html.=$s;
			}
			if (trim($row->js_list)!='') $page_html.="\n<script>\n".$row->js_list."\n</script>\n";
		} else {
			$database->setQuery( 'select value from #__smartformer_settings where variable="form_inactive"' );
			$msg = $database->loadResult();
			$page_html = "$msg<br /><br />";
		}
		$p=0; $p=strpos($page_html,'{%val');
		while ($p!==false) {
			$p2=strpos($page_html,'}',$p);
			if ($p2!==false) {
				$id=intval(substr($page_html,$p+5,$p2-$p-5));
				if (isset($_SESSION['smartformer'][$formid]['data']['c_form_element'.$id])) $value=$_SESSION['smartformer'][$formid]['data']['c_form_element'.$id]; else $value='';
				$vals=explode(',',$value);
				if (count($vals)>1 && is_numeric($vals[0])) $value=substr($value,strpos($value,',')+1);
				$vals=explode('|',$value);
				if (count($vals)>1 && strpos($value,'c_form_element')!==false) $value=substr($value,0,strpos($value,'|'));
				$page_html=substr($page_html,0,$p).preg_replace('/\n/','<br>',htmlspecialchars(stripslashes($value))).substr($page_html,$p2+1);
				$p2=$p+strlen($value);
			} else $p2=$p+1;
			$p=strpos($page_html,'{%val',$p2);
		}
		$p=0; $p=strpos($page_html,'{%id');
		while ($p!==false) {
			$p2=strpos($page_html,'}',$p);
			if ($p2!==false) {
				$id=intval(substr($page_html,$p+4,$p2-$p-4));
				if (isset($_SESSION['smartformer'][$formid]['data']['c_form_element'.$id])) $value=$_SESSION['smartformer'][$formid]['data']['c_form_element'.$id]; else $value='';
				$vals=explode(',',$value);
				if (count($vals)>1 && is_numeric($vals[0])) $value=substr($value,strpos($value,',')+1);
				$vals=explode('|',$value);
				if (count($vals)>1 && strpos($value,'c_form_element')!==false) $value=substr($value,0,strpos($value,'|'));
				if (strpos(strtolower($page_html),'name=c_form_element'.$id.' ')!==false || strpos(strtolower($page_html),'name="c_form_element'.$id.'"')!==false) $s='document.mform'.$form_unic.'.c_form_element'.$id;
					else $s='document.getElementById(\'c_form_element'.$id.'\')';
				$page_html=substr($page_html,0,$p).$s.substr($page_html,$p2+1);
				$p2=$p+strlen($value);
			} else $p2=$p+1;
			$p=strpos($page_html,'{%id',$p2);
		}
		if (isset($row->php_list) && trim($row->php_list)!='') eval($row->php_list);
		return $page_html;
	}

	function _getObjById( $id ) {
	    foreach( $this->_objs as $obj ) {
	        $obj = explode("|",$obj);
	        if( isset($obj[SF_OBJ_ID]) ) {
    	        if( $obj[SF_OBJ_ID] == $id ) {
    	            return $obj;
    	        }
	        }
	    }
	    return null;
	}

	function get_element_data($type, $id_element, $formid, $email_format){
		if ($type=="c") {
			if (intval($id_element)>0 && isset($_SESSION['smartformer'][$formid]['data']['c_form_element'.intval($id_element)])) {
				$element_data=$_SESSION['smartformer'][$formid]['data']['c_form_element'.intval($id_element)];
				if (strpos($element_data,'i_form_element')!==false) $element_data='checked';

				if (strpos($element_data,',')!==false && is_numeric(substr($element_data,0,strpos($element_data,',')))) {
				    list(,$element_data)=explode(",",$element_data,2);
				}
				$element_data = stripcslashes($element_data);
	    		if( $email_format == 1 ) {
					$element_data = htmlspecialchars($element_data);
				}
				return $element_data;
			}
		}

		if ($type=="g") {
			if (intval($id_element)>0 && isset($_SESSION['smartformer'][$formid]['data']['c_form_group'.intval($id_element)])) {
				$element_data=$_SESSION['smartformer'][$formid]['data']['c_form_group'.intval($id_element)];

				if (strpos($element_data,'i_form_element')!==false) {
					    $obj2 = $this->_getObjById(intval(substr($element_data,14)));
					    $element_data = $obj2[3];
				}
				$element_data = stripcslashes($element_data);

	    		if( $email_format == 1 ) {
					$element_data = htmlspecialchars($element_data);
				}
				return $element_data;
			}
		}

	}

	function parseMailTemplate( &$row , &$user , $formid , $email_format , $name_from , $email_from , $cc , $bcc , $email_msg ) {
        $_data = &$_SESSION['smartformer'][$formid]['data'];
        $subject = $this->_subject;
          $headers='';
		if ($email_format== 1 ) {
		    $headers  = 'MIME-Version: 1.0' . "\r\n";
		}
		if (trim($name_from)!='') {
		    $headers .= 'From: '.$name_from.' <'.$email_from. ">\r\n";
		} else {
		    $headers .= 'From: '.$email_from. "\r\n";
		}
		if (trim($cc)!='') $headers .= 'Cc: '.$cc . "\r\n";
		if (trim($bcc)!='') $headers .= 'Bcc: '.$bcc . "\r\n";

		$email_msg = preg_replace("/{c([0-9]{1,3}):([^{\n]{1,50})}/e", "SmartformerEngine::get_element_data('c', '\\1', $formid, $email_format)", $email_msg);
		$email_msg = preg_replace("/{g([0-9]{1,3}):([^{\n]{1,50})}/e", "SmartformerEngine::get_element_data('g', '\\1', $formid, $email_format)", $email_msg);
        $pos2=0;
		$pos=strpos($email_msg,'{return_url_system:');//new
		if ($pos!==false){ //new
		    $url = $GLOBALS['sf_live_site'].'/index.php?option=com_smartformer&form='.$this->_hash;
	        if( $email_format == 1 ) {
	            $url = '<a href="' . $url . '">'.$url.'</a>';
	        }
				$email_msg=substr($email_msg,0,$pos).$url.substr($email_msg,$pos+39);
		}//new
        $this->_database->setQuery( 'select now()' );
    	$datetime = $this->_database->loadResult();
		$pos=strpos($email_msg,'{datetime_system:');
		if ($pos!==false) $email_msg=substr($email_msg,0,$pos).$datetime.substr($email_msg,$pos+36);
		$pos=strpos($email_msg,'{username_system:');
		if ($pos!==false) $email_msg=substr($email_msg,0,$pos).(($user->id>0)?$user->username.' ('.$user->id.')':'site visitor').substr($email_msg,$pos+35);
		$pos=strpos($email_msg,'{ip_system:');
		if ($pos!==false) $email_msg=substr($email_msg,0,$pos).getenv("REMOTE_ADDR").substr($email_msg,$pos+23);
		$email_msg=preg_replace('/\n/','<br>',$email_msg);
		if ($email_format!=1) {
		    $email_msg=preg_replace(
		        array(
		            '/<br ?\/>/','/<br>/','/<\/tr>/','/<\/title>/','/<\/h\d>/',
		            '/<\/p>/',
		            '@<[\/\!\-]*?[^<>]*?>@si','/\&nbsp;/'
		        ),
		        array(
		            "\r\n","\r\n","\r\n","\r\n","\r\n",
		            "\r\n",
		            '',' '
		        ),
		        $email_msg
		    );
		    $email_msg = unhtmlentities($email_msg);
		}
		return array($email_msg,$headers);
	}

	function getValidator($id, $uid) {
		global $database;
		if (defined( '_JEXEC' )) {
			$database=& JFactory::getDBO();
		}
		$database->setQuery( 'select value from #__smartformer_settings where variable="validator'.intval($id).'"' );
		$msg = htmlspecialchars(htmlspecialchars(addcslashes($database->loadResult(),"'\"\\")));

		if ($id==1) return "if (this.value.length>150) show_message$uid(this,'$msg',alert_mode);";
		if ($id==2) return "if (this.value.length>150) show_message$uid(this,'$msg',alert_mode);";
		if ($id==3) return "var RegExp=/^((([a-z]|[0-9]|!|#|$|%|&|'|\*|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+(\.([a-z]|[0-9]|!|#|$|%|&|'|\*|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+)*)@((((([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.))*([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.)[\w]{2,4}|(((([0-9]){1,3}\.){3}([0-9]){1,3}))|(\[((([0-9]){1,3}\.){3}([0-9]){1,3})\])))$/; if (this.value!='' && !RegExp.test(this.value.toLowerCase())) show_message$uid(this,'$msg',alert_mode);"; //e-mail
		if ($id==4) return "if (Math.floor(this.value)!=this.value-0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==5) return "if (Math.floor(this.value)!=this.value-0 || this.value-0<0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==6) return "letters='qwertyuiopasdfghjklzxcvbnm '; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps) show_message$uid(this,'$msg',alert_mode);";
		if ($id==7) return "letters='qwertyuiopasdfghjklzxcvbnm -'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps) show_message$uid(this,'$msg',alert_mode);";
		if ($id==8) return "letters='qwertyuiopasdfghjklzxcvbnm -1234567890'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || this.value.length>10) show_message$uid(this,'$msg',alert_mode);";
		if ($id==9) return "var zipPattern1=/^(\d{5})$/; var zipPattern2=/^(\d{5})\-(\d{4})$/; if ((this.value.match(zipPattern1)==null)&&(this.value.match(zipPattern2)==null)&&this.value.length>0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==10) return "letters='1234567890 -.()+'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || this.value.length>10) show_message$uid(this,'$msg',alert_mode);";
		if ($id==11) return "var phonePattern=/^(\d{3})\-(\d{3})\-(\d{4})$/; if ((this.value.match(phonePattern)==null)&&this.value.length>0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==12) return "if ((this.value.length<6 || this.value.length>12) && this.value.length!=0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==13) return "letters='1234567890'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || (this.value.length<16 && this.value.length!=0) || this.value.length>18) show_message$uid(this,'$msg',alert_mode);";
		if ($id==14) return "letters='1234567890'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || (this.value.length<3 && this.value.length!=0) || this.value.length>4) show_message$uid(this,'$msg',alert_mode);";
		if ($id==15) return "letters='qwertyuiopasdfghjklzxcvbnm -.()+/1234567890'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || this.value.length>5) show_message$uid(this,'$msg',alert_mode);";
		if ($id==16) return "letters='qwertyuiopasdfghjklzxcvbnm -.()+/1234567890'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || this.value.length>3) show_message$uid(this,'$msg',alert_mode);";
		if ($id==17) return "letters='1234567890.'; ps=false; for(i=0;i<this.value.length;i++) if (letters.indexOf(this.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || this.value.length>10 || Math.floor(this.value*100)/100!=this.value-0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==18) return "if (this.value-0<0 || this.value-0>0 || this.value=='0') ; else show_message$uid(this,'$msg',alert_mode);";
		if ($id==19) return "var RegExp=/^(([\w]+:)?\/\/)?(([\d\w]|%[a-fA-f\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(\/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?$/; if (this.value!='' && !RegExp.test(this.value)) show_message$uid(this,'$msg',alert_mode);";
		if ($id==20) return "var RegExp=/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/; a=this.value.split('.'); if (this.value!='' && !RegExp.test(this.value) || a[0]>255 || a[1]>255 || a[2]>255 || a[3]>255) show_message$uid(this,'$msg',alert_mode);";
		if ($id==21) return "var ssnPattern1 = /^(\d{3})\-(\d{2})\-(\d{4})$/; var ssnPattern2 = /^(\d{2})\-(\d{7})$/; if ((this.value.match(ssnPattern1)==null)&&(this.value.match(ssnPattern2)==null)&&this.value.length>0) show_message$uid(this,'$msg');";
		if ($id==22) return "housePattern = /^(\d{1,4})(\S{0,1})$/; if (this.value.match(housePattern)==null&&this.value.length>0) show_message$uid(this,'$msg',alert_mode);";
		if ($id==23) return "a=this.value.split('/'); if (a[0]-0>0 && a[0]-0<=12 && a[1]-0>0 && a[1]-0<=31 && a[2]-0>1000 && a[2]-0<=9999 && a[3]==null ||this.value.length==0) ; else show_message$uid(this,'$msg',alert_mode);";
		if ($id==24) return "a=this.value.split('/'); if (a[0]-0>0 && a[0]-0<=12 && a[1]-0>0 && a[1]-0<=31 && a[2]-0>=0 && a[2]-0<=99 && a[3]==null ||this.value.length==0) ; else show_message$uid(this,'$msg',alert_mode);";
		if ($id==25) return "a=this.value.split(':'); if (a[0]-0>=0 && a[0]-0<24 && a[1]-0>=0 && a[1]-0<60 && a[2]==null ||this.value.length==0) ; else show_message$uid(this,'$msg',alert_mode);";

	}
	function outputMessage($uid) {
		global $database;
		if (defined( '_JEXEC' )) {
			$database=& JFactory::getDBO();
		}
		$database->setQuery( 'select value from #__smartformer_settings where variable="entries_not_match"' );
		$not_match = htmlspecialchars(addcslashes($database->loadResult(),'\'"\\'));
		$database->setQuery( 'select value from #__smartformer_settings where variable="field_mandatory"' );
		$mandatory = htmlspecialchars(addcslashes($database->loadResult(),'\'"\\'));
		$database->setQuery( 'select value from #__smartformer_settings where variable="field_mandatory2"' );
		$mandatory2 = htmlspecialchars(addcslashes($database->loadResult(),'\'"\\'));
		$database->setQuery( 'select value from #__smartformer_settings where variable="confirm"' );
		$confirm = htmlspecialchars(addcslashes($database->loadResult(),'"\'\\'));

		$s="function show_message$uid(oField, msg, mode) {\n if (mode==1) {alert(msg); bool=true; ex=false; return; }\n flow_div=document.getElementById('flow_msg$uid');\n flow_div.style.opacity=1;\n flow_div.style.filter='progid:DXImageTransform.Microsoft.BasicImage(opacity=1)';\n flow_div.innerHTML='<b>'+msg+'</b>';\n flow_div.style.left=(px_int(oField.style.left)+px_int(oField.style.width)-10)+'px';\n flow_div.style.top=(px_int(oField.style.top)-px_int(flow_div.offsetHeight)+10)+'px';\n flow_div.style.visibility='visible';\n ex=false; setTimeout('hide_message$uid(1)',2000);\n}\n";
		$s.="function hide_message$uid(o) {if (o<0.1) {document.getElementById('flow_msg$uid').style.visibility='hidden';} else {document.getElementById('flow_msg$uid').style.opacity=o; document.getElementById('flow_msg$uid').style.filter='progid:DXImageTransform.Microsoft.BasicImage(opacity='+o+')'; setTimeout('hide_message$uid('+(o-0.1)+')',50);} }";
		$s.='function px_int (px) {if (px.toString().toLowerCase().indexOf("p")>-1) return px.toString().substring(0,px.toString().toLowerCase().indexOf("p"))-0; return px;}';

		$database->setQuery( 'select * from #__smartformer_settings' );
		$data=$database->loadObjectList();
		$msgs=array();
		foreach ($data as $value) $msgs[$value->variable]=htmlspecialchars(addcslashes($value->value,'\'"\\'));
		$s.="\nfunction check_valid(obj,type) {\n";
		$s.="if (type==1) {if (obj.value.length>150) return '".$msgs['validator1']."'; else return ''; }\n";
		$s.="if (type==2) {if (obj.value.length>150) return '".$msgs['validator2']."'; else return ''; }\n";
		$s.="if (type==3) {var RegExp=/^((([a-z]|[0-9]|!|#|$|%|&|'|\*|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+(\.([a-z]|[0-9]|!|#|$|%|&|'|\*|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+)*)@((((([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.))*([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.)[\w]{2,4}|(((([0-9]){1,3}\.){3}([0-9]){1,3}))|(\[((([0-9]){1,3}\.){3}([0-9]){1,3})\])))$/; if (obj.value!='' && !RegExp.test(obj.value.toLowerCase())) return '".$msgs['validator3']."'; else return ''; }\n";//e-mail
		$s.="if (type==4) {if (Math.floor(obj.value)!=obj.value-0) return '".$msgs['validator4']."'; else return ''; }\n";
		$s.="if (type==5) {if (Math.floor(obj.value)!=obj.value-0 || obj.value-0<0) return '".$msgs['validator5']."'; else return ''; }\n";
		$s.="if (type==6) {letters='qwertyuiopasdfghjklzxcvbnm '; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps) return '".$msgs['validator6']."'; else return ''; }\n";
		$s.="if (type==7) {letters='qwertyuiopasdfghjklzxcvbnm -'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps) return '".$msgs['validator7']."'; else return ''; }\n";
		$s.="if (type==8) {letters='qwertyuiopasdfghjklzxcvbnm -1234567890'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || obj.value.length>10) return '".$msgs['validator8']."'; else return ''; }\n";
		$s.="if (type==9) {var zipPattern1=/^(\d{5})$/; var zipPattern2=/^(\d{5})\-(\d{4})$/; if ((obj.value.match(zipPattern1)==null)&&(obj.value.match(zipPattern2)==null)&&obj.value.length>0) return '".$msgs['validator9']."'; else return ''; }\n";
		$s.="if (type==10) {letters='1234567890 -.()+'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || obj.value.length>10) return '".$msgs['validator10']."'; else return ''; }\n";
		$s.="if (type==11) {var phonePattern=/^(\d{3})\-(\d{3})\-(\d{4})$/; if ((obj.value.match(phonePattern)==null)&&obj.value.length>0) return '".$msgs['validator11']."'; else return ''; }\n";
		$s.="if (type==12) {if ((obj.value.length<6 || obj.value.length>12) && obj.value.length!=0) return '".$msgs['validator12']."'; else return ''; }\n";
		$s.="if (type==13) {letters='1234567890'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || (obj.value.length<16 && obj.value.length!=0) || obj.value.length>18) return '".$msgs['validator13']."'; else return ''; }\n";
		$s.="if (type==14) {letters='1234567890'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || (obj.value.length<3 && obj.value.length!=0) || obj.value.length>4) return '".$msgs['validator14']."'; else return ''; }\n";
		$s.="if (type==15) {letters='qwertyuiopasdfghjklzxcvbnm -.()+/1234567890'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || obj.value.length>5) return '".$msgs['validator15']."'; else return ''; }\n";
		$s.="if (type==16) {letters='qwertyuiopasdfghjklzxcvbnm -.()+/1234567890'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || obj.value.length>3) return '".$msgs['validator16']."'; else return ''; }\n";
		$s.="if (type==17) {letters='1234567890.'; ps=false; for(i=0;i<obj.value.length;i++) if (letters.indexOf(obj.value.toLowerCase().substr(i,1))<0) ps=true; if (ps || obj.value.length>10 || Math.floor(obj.value*100)/100!=obj.value-0) return '".$msgs['validator17']."'; else return ''; }\n";
		$s.="if (type==18) {if (obj.value-0<0 || obj.value-0>0 || obj.value=='0') return ''; else return '".$msgs['validator18']."'; }\n";
		$s.="if (type==19) {var RegExp=/^(([\w]+:)?\/\/)?(([\d\w]|%[a-fA-f\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(\/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?$/; if (obj.value!='' && !RegExp.test(obj.value)) return '".$msgs['validator19']."'; else return ''; }\n";
		$s.="if (type==20) {var RegExp=/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/; a=obj.value.split('.'); if (obj.value!='' && !RegExp.test(obj.value) || a[0]>255 || a[1]>255 || a[2]>255 || a[3]>255) return '".$msgs['validator20']."'; else return ''; }\n";
		$s.="if (type==21) {var ssnPattern1 = /^(\d{3})\-(\d{2})\-(\d{4})$/; var ssnPattern2 = /^(\d{2})\-(\d{7})$/; if ((obj.value.match(ssnPattern1)==null)&&(obj.value.match(ssnPattern2)==null)&&obj.value.length>0) return '".$msgs['validator21']."'; else return ''; }\n";
		$s.="if (type==22) {housePattern = /^(\d{1,4})(\S{0,1})$/; if (obj.value.match(housePattern)==null&&obj.value.length>0) return '".$msgs['validator22']."'; else return ''; }\n";
		$s.="if (type==23) {a=obj.value.split('/'); if (a[0]-0>0 && a[0]-0<=12 && a[1]-0>0 && a[1]-0<=31 && a[2]-0>1000 && a[2]-0<=9999 && a[3]==null ||obj.value.length==0) return ''; else return '".$msgs['validator23']."'; }\n";
		$s.="if (type==24) {a=obj.value.split('/'); if (a[0]-0>0 && a[0]-0<=12 && a[1]-0>0 && a[1]-0<=31 && a[2]-0>=0 && a[2]-0<=99 && a[3]==null ||obj.value.length==0) return ''; else return '".$msgs['validator24']."'; }\n";
		$s.="if (type==25) {a=obj.value.split(':'); if (a[0]-0>=0 && a[0]-0<24 && a[1]-0>=0 && a[1]-0<60 && a[2]==null ||obj.value.length==0) return ''; else return '".$msgs['validator25']."'; }\n";
		$s.='}';
		$s.="var bool=false; var alert_mode=0;\nfunction doValidation(obj, type, alias, type2, req, equal, cnt) {\n if (!bool) {\n res=true;\n if (!cnt) return;\n m=check_valid(cnt,type); if (m && m!='') {bool=true; alert(m);}\n if (!bool && equal && type2!=4 && cnt && equal.value!=cnt.value) {alert('$not_match'); bool=true;}\n if (type2==6 && req==1 && cnt.selectedIndex==-1 && !bool || type2==7 && req==1 && cnt.selectedIndex==0 && !bool) {alert('$mandatory'); bool=true;} if (type2==4 && !bool && req==1 && equal) {bool2=false; for(i=0;i<equal.length;i++) if (equal[i].checked) bool2=true; if (bool2==false) {alert('$mandatory'); bool=true;} }\nif ((type2==1 || type2==2 || type2==3) && req==1 && cnt && cnt.value=='' && !bool) {alert('$mandatory2'); bool=true;}\n if (type2==5 && !bool && req==1 && cnt && !cnt.checked) {alert('$confirm'); bool=true;} cnt.focus();} }";

		return $s;
	}

	function captcha() {
	    $formid = $_REQUEST['formid'];
	    switch(@$_SESSION['smartformer']['sec_code'][$formid]['type']) {
	        case 1:
        	    require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/alikon/captcha.php');
                $captcha = new alikoncaptcha() ;
        		$captcha->codelength = 6;
        		$captcha->image($formid) ;
        		exit;
	        case 2:
        		if (version_compare(phpversion(), "5.0.0", ">=")) require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform/captchaform5.php');
        		else require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform/captchaform4.php');
        		$captcha = new captchaform();
                $captcha->session = "captchaform";
        		$captcha->codelength = 6;
        		$captcha->type='png';
        		$captcha->fontdir = $GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform';
        		$captcha->colors = array("FF0000", "990099", "0000FF");
        		$captcha->backgrounddir = $GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/captchaform/bg';
        		$captcha->image($formid);
        		exit;
	        case 3:
        		require_once($GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/securimage/securimage.php');
        		$img = new securimage();
        		$img->code_length = 5;
        		$img->ttf_file=$GLOBALS['sf_absolute_path'].'/components/com_smartformer/captcha/securimage/elephant.ttf';
        		$img->image($formid);
        	    exit;
	    }
	}
}

?>
