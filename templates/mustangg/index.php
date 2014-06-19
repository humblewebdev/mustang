<?php
/**
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

defined('_JEXEC') or die('Restricted access');

$url = clone(JURI::getInstance());
$showRightColumn = $this->countModules('user1 or user2 or right or top');
$showRightColumn &= JRequest::getCmd('layout') != 'form';
$showRightColumn &= JRequest::getCmd('task') != 'edit';

if(JRequest::getVar('view') == "frontpage" ): 
		define("is_home", true);
    else : 
		define("is_home", false);
	endif;


?>

<?php echo '<?xml version="1.0" encoding="utf-8"?'.'>'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
	<jdoc:include type="head" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/template.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/position.css" type="text/css" media="screen,projection" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/layout.css" type="text/css" media="screen,projection" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/print.css" type="text/css" media="Print" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/general.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/style.css" type="text/css" />
	<?php if($this->direction == 'rtl') : ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/template_rtl.css" type="text/css" />
	<?php endif; ?>
	<!--[if lte IE 6]>
		<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/ieonly.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
		<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/ie7only.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/javascript/md_stylechanger.js"></script>
<?php
	if($_REQUEST['Itemid'] == 66){
?>    
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/javascript/jquery.js"></script>
    
<script type="text/javascript">
	jQuery(document).ready(function(){
		var $ = jQuery;
		$(".contact-title").text($(".contact-title").text());
		$(".sectiontableentry1").parent().find("tr td:first-child").remove();
	});

</script>

<?php }?>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-31370641-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</head>

<body>
<div id="containerone">

</div>

<div id="containertwo">
	<div id="containerthree">
	<div id="header">
		<div id="logo">
        <a id="imganchor" href="<?php echo $this->baseurl ?>/index.php"><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/images/logo.png"/></a>
		</div>
		<div id="t-holder">
			   <?php if($this->countModules('user2')) : ?>
         
            <div id="t-middle">
               <jdoc:include type="modules" name="user2" style="none" />
			</div><!--t-middle-->
               <?php endif; ?>
            
            
            <?php if($this->countModules('user1')) : ?>
            
                <div id="t-right">
			    <jdoc:include type="modules" name="user1" style="none" />
               	</div><!--t-right-->
            <?php endif; ?>
		</div><!--t-holder-->

	</div><!--header-->
	</div><!--container-three-->
    <div class="clear">
    </div>
    <div id="containerfour">
     <div id="top-cover">
     </div>
     
     <?php if($this->countModules('topMenu')) : ?>
     <div id="top-nav-c">
     <div id="t-nav">
      <jdoc:include type="modules" name="topMenu" style="none" />
       <?php endif; ?> 
    </div>
    </div>
     
    <div id="wrapper">
    <?php if(is_home) {?>
    <?php if($this->countModules('user3')) : ?>
    		<div id="slider">
		        <jdoc:include type="modules" name="user3" style="none" />
      		</div>
    <?php endif; ?>
    <div class="divider">
   		</div>
    <?php }	else if($this->countModules('header_banner')){?>
    <div class="page_banner">
        <jdoc:include type="modules" name="header_banner" style="none" />
      </div>
      <div class="divider">
   		</div>
    <?php }	?>
    	
       <div id="content">
       <div id="content-holder">
       <?php if($this->countModules('right')) : ?>
        <div id="left-con">
        <?php else: ?>
                <div id="left-con1">
        <?php endif;?>
        <jdoc:include type="component" />
       </div><!--left-con-->
       
       <?php if($this->countModules('right')) : ?>
	       <div id="right-con">
   		       <jdoc:include type="modules" name="right" style="none" />
           </div><!--right-con-->
           <?php else:?>
           <div id="right-con1">
	           <jdoc:include type="modules" name="sidebar_links" />
           </div>
           
         <?php endif; ?> 
        <?php if(is_home) : ?>
        	<div class="middleblocks">
			<script type="text/javascript" src="http://www.oil-price.net/TINY_CHART/gen.php?lang=en"></script><noscript> To get the <a href="http://www.oil-price.net/dashboard.php?lang=en#TINY_CHART">oil price</a>, please enable Javascript. </noscript></div>
            <div class="middleblocks">
<script type="text/javascript" src="http://www.oil-price.net/widgets/natural_gas_small/gen.php?lang=en#natural_gas_small"> </script>
<noscript> To get the <a href="http://www.oil-price.net">natural gas price</a>, please enable Javascript. </noscript></div>
        <?php endif;?>
      
       
       </div><!--content-holder-->
       <?php if(is_home) {?>
        <div class="divider-down">
   		</div>
        
        <div id="imgs">
     
         <div id="l-imgs">
             <?php if($this->countModules('user4')) : ?>
        <div class="imgp">
         <jdoc:include type="modules" name="user4" style="none" />
       
        </div>
            <?php endif; ?> 
        </div>
         
        <div id="r-imgs">
        <?php if($this->countModules('user5')) : ?>
        <div class="imgq">
         <jdoc:include type="modules" name="user5" style="none" />
      
        </div>
        <?php endif; ?> 
        <?php if($this->countModules('user6')) : ?>
        <div class="imgr">
         <jdoc:include type="modules" name="user6" style="none" />
      
        </div>
        <?php endif; ?> 
        </div>
        </div>
        <?php }?>
        <div class="divider-down">
   		</div>
        
       </div><!--content-->
       
       <div id="bottom-img-hld">
       
       </div>
    
    </div><!--wrapper-->
     <div id="bottom-cover">
     </div>
    </div><!--content-->
       <?php if($this->countModules('user7')) : ?>
    <div id="b-nav">
    <jdoc:include type="modules" name="user7" style="none" />
    </div>
    <?php endif; ?> 
       <?php if($this->countModules('copyrights')) : ?>
    <div id="copyright">
 <jdoc:include type="modules" name="copyrights" style="none" />
    </div>
      <?php endif; ?> 
</div><!--container-four-->

</body>
</html>
