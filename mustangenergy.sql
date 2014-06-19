-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.143.145    Database: mustangenergy
-- ------------------------------------------------------
-- Server version	5.5.33-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jos_avr_player`
--

DROP TABLE IF EXISTS `jos_avr_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avr_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `minw` int(11) NOT NULL DEFAULT '0',
  `minh` int(11) NOT NULL DEFAULT '0',
  `isjw` int(1) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `code` mediumtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avr_player`
--

LOCK TABLES `jos_avr_player` WRITE;
/*!40000 ALTER TABLE `jos_avr_player` DISABLE KEYS */;
INSERT INTO `jos_avr_player` VALUES (1,0,0,0,1,'flv','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@RLOC@mediaplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\n{file:\'@MURL@\',width:\'@WIDTH@\',height:\'@HEIGHT@\',@IF(ENABLEJS)@javascriptid:\'p_@DIVID@\',\n@/IF@@IFS(PLTHUMBS)@thumbsinplaylist:\'@PLTHUMBS@\',\n@/IFS@@IF(AUTOSCROLL)@autoscroll:\'@AUTOSCROLL@\',\n@/IF@@IFS(TYPE)@type:\'@TYPE@\',\n@/IFS@@IFS(VOLUME)@volume:\'@VOLUME@\',\n@/IFS@@IFS(CFG)@config:\'@CFG@\',\n@/IFS@@IFS(LINK)@link:\'@LINK@\',\n@/IFS@@IFS(IMG)@image:\'@IMG@\',\n@/IFS@@IFS(LINK)@linkfromdisplay:\'@LINKFROMDISPLAY@\',\n@/IFS@@IFS(LINK)@linktarget:\'@LINKTARGET@\',\n@/IFS@@IFS(REPEAT)@repeat:\'@REPEAT@\',\n@/IFS@@IFS(SHUFFLE)@shuffle:\'@SHUFFLE@\',\n@/IFS@@IFS(RECURL)@recommendations:\'@RECURL@\',\n@/IFS@@IFS(DISPLAYWIDTH)@displaywidth:\'@DISPLAYWIDTH@\',\n@/IFS@@IFS(DISPLAYHEIGHT)@displayheight:\'@DISPLAYHEIGHT@\',\n@/IFS@@IFS(LOGO)@logo:\'@LOGO@\',\n@/IFS@@IFS(CAPTIONS)@captions:\'@CAPTIONS@\',\n@/IFS@@IFS(USECAPTIONS)@usecaptions:\'@USECAPTIONS@\',\n@/IFS@@IFS(SEARCHLINK)@searchlink:\'@SEARCHLINK@\',\n@/IFS@showeq:\'@SHOWEQ@\',searchbar:\'@SEARCHBAR@\',enablejs:\'@ENABLEJS@\',autostart:\'@AUTOSTART@\',showicons:\'@SHOWICONS@\',@IF(!SHOWNAV)@shownavigation:\'@SHOWNAV@\',@/IF@@IF(SHOWNAV)@showstop:\'@SHOWSTOP@\',showdigits:\'@SHOWDIGITS@\',\nshowdownload:\'@SHOWDOWNLOAD@\',@/IF@usefullscreen:\'@USEFULLSCREEN@\',backcolor:\'@PBGCOLOR@\',frontcolor:\'@PFGCOLOR@\',\nlightcolor:\'@PHICOLOR@\',screencolor:\'@PSCCOLOR@\',overstretch:\'@STRETCH@\'}\n,{allowscriptaccess:\'always\',seamlesstabbing:\'true\',allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','JW Media Player'),(2,0,0,0,0,'wmv','<object classid=\"CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6\"\n type=\"application/x-oleobject\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\">\n<param name=\"URL\" value=\"@MURL@\" />\n<param name=\"stretchToFit\" value=\"1\" />\n<param name=\"showControls\" value=\"1\" />\n<param name=\"showStatusBar\" value=\"0\" />\n<param name=\"animationAtStart\" value=\"1\" />\n<param name=\"autoStart\" value=\"@AUTOSTART!d@\" />\n<param name=\"enableFullScreenControls\" value=\"@USEFULLSCREEN!d@\" \n/><embed src=\"@MURL@\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" autoStart=\"@AUTOSTART!d@\" animationAtStart=\"1\" enableFullScreenControls=\"@USEFULLSCREEN!d@\" type=\"application/x-mplayer2\"/></embed></object>','Windows Media Player'),(3,0,0,0,0,'mov','<object codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\"><param name=\"src\" value=\"@MURL@\" /><param name=\"controller\" value=\"True\" /><param name=\"cache\" value=\"False\" /><param name=\"autoplay\" value=\"@AUTOSTART@\" /><param name=\"kioskmode\" value=\"False\" /><param name=\"scale\" value=\"tofit\" /><embed src=\"@MURL@\" pluginspage=\"http://www.apple.com/quicktime/download/\" scale=\"tofit\" kioskmode=\"False\" qtsrc=\"@MURL@\" cache=\"False\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" controller=\"True\" type=\"video/quicktime\" autoplay=\"@AUTOSTART@\" /></object>','QuickTime Player'),(4,0,0,0,0,'rm','<object classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\"><param name=\"controls\" value=\"ControlPanel\" /><param name=\"autostart\" value=\"@AUTOSTART!d@\" /><param name=\"src\" value=\"@MURL@\" /><embed src=\"@MURL@\" type=\"audio/x-pn-realaudio-plugin\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" controls=\"ControlPanel\" autostart=\"@AUTOSTART!d@\" /></object>','Real Media Player'),(5,0,0,0,0,'divx','<object classid=\"CLSID:67DABFBF-D0AB-41fa-9C46-CC0F21721616\"\ncodebase=\"http://download.divx.com/webplayer/stage6/windows/AutoDLDivXWebPlayerInstaller.cab\" \n type=\"application/x-oleobject\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\">\n<param name=\"src\" value=\"@MURL@\" />\n<param name=\"custommode\" value=\"Stage6\" />\n<param name=\"showControls\" value=\"1\" />\n<param name=\"showpostplaybackad\" value=\"false\" />\n<param name=\"allowContextMenu\" value=\"@MENU@\" />\n@IFS(IMG)@<param name=\"previewImage\" value=\"@IMG@\" />\n@/IFS@<param name=\"autoplay\" value=\"@AUTOSTART@\" \n/><embed type=\"video/divx\" src=\"@MURL@\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" pluginspage=\"http://go.divx.com/plugin/download/\" showpostplaybackad=\"false\" custommode=\"Stage6\" autoplay=\"@AUTOSTART@\" allowContextMenu=\"@MENU@\"@@IFS(IMG)@ previewImage=\"@IMG@\"@/IFS@/></object>','DivX Webplayer'),(6,0,0,0,0,'6cn','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://6.cn/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{vid:\'@CODE@\',flag:\'1\'},{allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','6Cn.com original player'),(7,0,0,0,0,'biku','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.biku.com/opus/player.swf?VideoID=@CODE@&embed=true&autoStart=@AUTOSTART@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',menu:\'@MENU@\',bgcolor:\'@BGCOLOR@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Biku.com original player'),(8,0,0,0,0,'bofunk','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Bofunk.com original player'),(9,0,0,0,0,'break','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Break.com original player'),(10,0,0,0,0,'clipfish','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.clipfish.de/videoplayer.swf?videoid=@CODE@&r=1\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','ClipFish.de original player'),(11,0,0,0,0,'collegehumor','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.collegehumor.com/moogaloop/moogaloop.swf?clip_id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','CollegeHumor original player'),(12,0,420,340,0,'currenttv','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://current.com/e/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','CurrentTV original player'),(13,0,0,0,0,'dmotion','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.dailymotion.com/swf/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{v3:\'1\',related:\'0\',autoPlay:\'@AUTOSTART!d@\',colors:\'background:DDDDDD;glow:FFFFFF;foreground:333333;special:FFC300;\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'allways\',allowfullscreen:\'true\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','DailyMotion.com original player'),(14,0,0,0,0,'vidiac','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.vidiac.com/vidiac.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{name:\'ePlayer\',video:\'@CODE@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Vidiac.com original player'),(15,0,0,0,0,'gametrailers','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.gametrailers.com/remote_wrap.php?mid=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','GameTrailers.com original player'),(16,0,0,0,0,'google','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://video.google.com/googleplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{@IF(AUTOSTART)@autoPlay:\'true\',@/IF@docId:\'@CODE@\',hl:\'@LANG@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Google Video original player'),(17,0,0,0,0,'spike','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.spike.com/efp\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{flvBaseClip:\'@CODE@\'},{name:\'efp\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Spike.com original player (previously iFilm.com)'),(18,0,0,0,0,'jumpcut','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.jumpcut.com/media/flash/jump.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{asset_type:\'movie\',asset_id:\'@CODE@\',eb:\'1\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','JumpCut.com original player'),(19,0,0,0,0,'mega','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://wwwstatic.megavideo.com/tmp_mvplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{waitingtime:\'0\',flv:\'@CODE@\',k:\'@RRESA@\',poker:\'0\',v:\'@OCODE@\',rel_again:\'Play again\',rel_other:\'Related videos\',u:\'\',user:\'\',from:\'from:\',views:\'views\',vid_time:\'@RRESB@\',vid_name:\'\',videoname:\'\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'sameDomain\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MegaVideo.com original player'),(20,0,0,0,0,'metacafe','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.metacafe.com/fplayer/@CODE@.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{altServerURL:\'http://www.metacafe.com\',playerVars:\'showStats=no|autoPlay=no|videoTitle=\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MetaCafe.com original player'),(21,0,0,0,0,'mofile','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://tv.mofile.com/cn/xplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{v:\'@CODE@\',autoplay:\'0\'},{wmode:\'@WMODE@\',allowScriptAccess:\'always\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Mofile.com original player'),(22,0,0,0,0,'myvideo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.myvideo.de/movie/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MyVideo.com original player'),(23,0,0,0,0,'quxiu','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.quxiu.com/photo/swf/swfobj.swf?id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Quixu.com original player'),(24,0,0,0,0,'revver','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://flash.revver.com/player/1.0/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{mediaId:\'@CODE@\',javascriptContext:\'true\',skinURL:\'http://flash.revver.com/player/1.0/skins/Default_Raster.swf\',skinImgURL:\'http://flash.revver.com/player/1.0/skins/night_skin.png\',actionBarSkinURL:\'http://flash.revver.com/player/1.0/skins/DefaultNavBarSkin.swf\',resizeVideo:\'true\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Revver.com original player'),(25,0,0,0,0,'seehaha','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.seehaha.com/flash/playvid2.swf?vidID=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','SeeHaha.com original player'),(26,0,0,0,0,'sevenload','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://de.sevenload.com/pl/@CODE@/503x403/swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',allowscriptaccess:\'always\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'\n},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','SevenLoad.com original player'),(27,0,0,0,0,'stickam','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.stickam.com/flashVarMediaPlayer/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',scale:\'noscale\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','StickAm.com original player'),(28,0,0,0,0,'streetfire','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://videos.streetfire.net/vidiac.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{name:\'ePlayer\',video:\'@CODE@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','StreetFire original player'),(29,0,432,285,0,'ted','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.ted.com/swf/videoplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{jsonStr:\'@CODE@\',flashID:\'swfVideoPlayer\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'always\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','TED.com original player'),(30,0,0,0,0,'ted2','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://static.videoegg.com/ted/flash/loader.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{file:\'@CODE@\',autoPlay:\'@AUTOSTART@\',allowFullscreen:\'@USEFULLSCREEN@\',forcePlay:\'false\',logo:\'\',fullscreenURL:\'http://static.videoegg.com/ted/flash/fullscreen.html\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'always\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','TED.com alternative player'),(31,0,0,0,0,'tudou','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.tudou.com/v/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Tudou.com original player'),(32,0,0,0,0,'uume','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.uume.com/v/@CODE@_UUME\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Uume.com original player'),(33,0,0,0,0,'vimeo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.vimeo.com/moogaloop.swf?clip_id=@CODE@&server=www.vimeo.com&show_title=1&show_byline=1&show_portrait=0&autoplay=@AUTOSTART!d@&fullscreen=@USEFULLSCREEN!d@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',scale:\'showall\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Vimeo.com original player'),(34,0,0,0,0,'virb','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.virb.com/external/video/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',salign:\'tl\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Virb.com original player'),(35,0,0,0,0,'wangyou','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://v.wangyou.com/images/x_player.swf?id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','WangYou.com original player'),(36,0,0,0,0,'yahoo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://d.yimg.com/static.video.yahoo.com/yep/YV_YEP.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{onsite:\'0\',embed:\'1\',id:\'@CODE@\'},{allowfullscreen:\'@USEFULLSCREEN@\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Yahoo video original player'),(37,0,0,0,0,'youtube','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.youtube.com/v/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{autoplay:\'@AUTOSTART!d@\',color1:\'@PBGCOLOR@\',color2:\'@PHICOLOR@\',rel:\'@YTREL!d@\',egm:\'@YTEGM!d@\',border:\'@YTBORDER!d@\',loop:\'@YTLOOP!d@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','YouTube original player'),(38,0,0,0,0,'jwwmv','<script type=\"text/javascript\">\nnew jeroenwijering.Player($(\'@DIVID@\'),\'@RLOC@wmvplayer.xaml\',\n{file:\'@MURL@\',width:\'@WIDTH@\',height:\'@HEIGHT@\',@IF(ENABLEJS)@javascriptid:\'p_@DIVID@\',\n@/IF@@IFS(PLTHUMBS)@thumbsinplaylist:\'@PLTHUMBS@\',\n@/IFS@@IF(AUTOSCROLL)@autoscroll:\'@AUTOSCROLL@\',\n@/IF@@IFS(TYPE)@type:\'@TYPE@\',\n@/IFS@@IFS(CFG)@config:\'@CFG@\',\n@/IFS@@IFS(LINK)@link:\'@LINK@\',\n@/IFS@@IFS(IMG)@image:\'@IMG@\',\n@/IFS@@IFS(LINK)@linkfromdisplay:\'@LINKFROMDISPLAY@\',\n@/IFS@@IFS(LINK)@linktarget:\'@LINKTARGET@\',\n@/IFS@@IFS(REPEAT)@repeat:\'@REPEAT@\',\n@/IFS@@IFS(SHUFFLE)@shuffle:\'@SHUFFLE@\',\n@/IFS@@IFS(RECURL)@recommendations:\'@RECURL@\',\n@/IFS@@IFS(DISPLAYWIDTH)@displaywidth:\'@DISPLAYWIDTH@\',\n@/IFS@@IFS(DISPLAYHEIGHT)@displayheight:\'@DISPLAYHEIGHT@\',\n@/IFS@@IFS(LOGO)@logo:\'@LOGO@\',\n@/IFS@@IFS(SEARCHLINK)@searchlink:\'@SEARCHLINK@\',\n@/IFS@showeq:\'@SHOWEQ@\',searchbar:\'@SEARCHBAR@\',enablejs:\'@ENABLEJS@\',autostart:\'@AUTOSTART@\',showicons:\'@SHOWICONS@\',@IF(!SHOWNAV)@shownavigation:\'@SHOWNAV@\',@/IF@@IF(SHOWNAV)@showstop:\'@SHOWSTOP@\',showdigits:\'@SHOWDIGITS@\',\nshowdownload:\'@SHOWDOWNLOAD@\',@/IF@usefullscreen:\'@USEFULLSCREEN@\',backcolor:\'@PBGCOLOR@\',frontcolor:\'@PFGCOLOR@\',\nlightcolor:\'@PHICOLOR@\',screencolor:\'@PSCCOLOR@\',overstretch:\'@STRETCH@\'}\n);\n</script>','JW WMV Player (needs MS-SilverLight)'),(39,0,0,0,0,'swf','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@MURL@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\nfalse,{allowscriptaccess:\'always\',seamlesstabbing:\'true\',allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Plain flash embedding (for flash animations)'),(40,0,0,0,0,'brightcove','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.brightcove.tv/playerswf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{initVideoId:\'@CODE@\',servicesURL:\'http://www.brightcove.tv\',\nviewerSecureGatewayURL:\'https://www.brightcove.tv\',\ncdnURL:\'http://admin.brightcove.com\',autoStart:\'@AUTOSTART@\'},\n{base:\'http://admin.brightcove.com\',\nwmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',allowFullScreen:\'true\',\nallowScriptAccess:\'always\',seamlesstabbing:\'false\',swLiveConnect:\'true\'\n,menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Brightcove.tv original player'),(41,0,0,0,0,'myshows','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.seehaha.com/flash/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{vidFileName:\'@CODE@\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Myshows.cn (previouslyly seehaha.com)'),(42,0,0,0,0,'blip','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://blip.tv/scripts/flash/showplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\n{file:\'http://blip.tv/rss/flash/@CODE@?referrer=blip.tv&source=1\',enablejs:\'true\',feedurl:\'http://WatchMojo.blip.tv/rss\',\nshowplayerpath:\'showplayerpath=http://blip.tv/scripts/flash/showplayer.swf\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'sameDomain\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Blip.tv original player');
/*!40000 ALTER TABLE `jos_avr_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avr_popup`
--

DROP TABLE IF EXISTS `jos_avr_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avr_popup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divid` varchar(255) NOT NULL,
  `code` mediumtext NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `wtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`,`divid`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avr_popup`
--

LOCK TABLES `jos_avr_popup` WRITE;
/*!40000 ALTER TABLE `jos_avr_popup` DISABLE KEYS */;
INSERT INTO `jos_avr_popup` VALUES (1,'avreloaded0','<!-- AllVideos Reloaded Plugin (v1.2.7.1054) starts here\n--><ins><noscript><div style=\"background-color:red;color:white;width:160px\"><strong>JavaScript is disabled!</strong><br/>To display this content, you need a JavaScript capable browser.</div></noscript></ins><span id=\"avreloaded0\" class=\"allvideos\"><ins><div id=\"warnflashavreloaded0\" style=\"background-color:red;color:white;width:160px;visibility:hidden\"><strong>Adobe Flash Player not installed or older than 9.0.115!</strong><br/><a href=\"http://www.adobe.com/go/getflashplayer\" onclick=\"window.open(this.href);return false;\" onkeypress=\"window.open(this.href);return false;\"><img src=\"/clients/dev5/mustang/plugins/content/avreloaded/160x41_Get_Flash_Player.jpg\" alt=\"Get Adobe Flash Player here\" style=\"border:0\" /></a></div></ins></span><script type=\"text/javascript\">\nswfobject.embedSWF(\'/clients/dev5/mustang/plugins/content/avreloaded/mediaplayer.swf\',\'avreloaded0\',\'285\',\'162\',\'9.0.115\',\'/clients/dev5/mustang/plugins/content/avreloaded/expressinstall.swf\',\n{file:\'http://avantgarde-it.com/clients/dev5/mustang/images/stories/videos/Mustang_Energy_Services.mp4\',width:\'285\',height:\'162\',type:\'flv\',\nshoweq:\'false\',searchbar:\'false\',enablejs:\'false\',autostart:\'false\',showicons:\'true\',showstop:\'false\',showdigits:\'true\',\nshowdownload:\'false\',usefullscreen:\'false\',backcolor:\'0xFFFFFF\',frontcolor:\'0x000000\',\nlightcolor:\'0x000000\',screencolor:\'0x000000\',overstretch:\'false\'}\n,{allowscriptaccess:\'always\',seamlesstabbing:\'true\',allowfullscreen:\'true\',wmode:\'window\',bgcolor:\'#FFFFFF\',menu:\'true\'},\n{id:\'p_avreloaded0\',styleclass:\'allvideos\'});\n</script><script type=\"text/javascript\">window.addEvent(\"domready\",function(){var s = \"warnflashavreloaded0\"; if ($(s)){$(s).setOpacity(1);}});</script><!--\nAllVideos Reloaded Plugin (v1.2.7.1054) ends here -->',285,162,'2012-04-19 10:19:55');
/*!40000 ALTER TABLE `jos_avr_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avr_ripper`
--

DROP TABLE IF EXISTS `jos_avr_ripper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avr_ripper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cindex` int(11) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL,
  `regex` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avr_ripper`
--

LOCK TABLES `jos_avr_ripper` WRITE;
/*!40000 ALTER TABLE `jos_avr_ripper` DISABLE KEYS */;
INSERT INTO `jos_avr_ripper` VALUES (1,0,0,0,'6cn','http://6.cn/watch/@CODE@.html','pageMessage.evid\\s*=\\s*\'([^\']+)\'\\s*;','6CN.com'),(2,0,0,0,'bofunk','http://www.bofunk.com/video/@CODE@.html','<input\\stype=\'text\'\\svalue=\'<embed\\ssrc=\"([^\"]+)\"','Bofunk.com'),(3,0,0,0,'break','http://www.break.com/index/@CODE@.html','<param name=\"movie\" value=\"([^\"]+)\">','Break.com'),(4,0,0,0,'dropshots','http://www.dropshots.com/V1.0/Media.getList?appid=dropshots&username=@USER@&min_taken_date=@CODE@&passwordprotection=false&output=xml','<video>(.+)</video>','Dropshots.com'),(5,0,0,0,'mega','http://www.megavideo.com/?v=@CODE@','addVariable\\s*\\(\\s*\"flv\"\\s*,\\s*\"([^\"]+)\"[\\s\\S]*?addVariable\\s*\\(\\s*\"k\"\\s*,\\s*\"([^\"]+)\"[\\s\\S]*?addVariable\\s*\\(\\s*\"vid_time\"\\s*,\\s*\"([^\"]+)\"','MegaVideo.com'),(6,0,0,0,'ted','http://www.ted.com/index.php/talks/view/id/@CODE@','firstRun\\s*=\\s*\"([^\"]+)\"','TED.com'),(7,0,0,0,'ted2','http://www.ted.com/index.php/talks/view/id/@CODE@','paste-->.+&file=([^&]+).*</object>','TED.com (for alternate player)'),(8,0,0,0,'yahoo','http://video.yahoo.com/watch/@CODE@','addVariable\\s*\\(\\s*\"id\"\\s*,\\s*\"([^\"]+)\"','Yahoo Video'),(9,0,0,0,'streetfire','http://videos.streetfire.net/video/@CODE@.htm','_embedCodeID.*video=([\\dabcdef\\-]+)','StreetFire'),(10,0,0,0,'myshows','http://www.myshows.cn/myplayvideo.aspx?vid=@CODE@','vidFileName=([^\"]+)','Myshows.cn (previouslyly seehaha.com)'),(11,0,0,0,'virb','http://www.virb.com/@CODE@','external/video/([^&\"]+)','Virb.com'),(12,0,0,0,'blip','http://www.blip.tv/file/@CODE@','setPostsId\\s*\\(\\s*(\\d+)\\s*\\)','Blip.tv'),(13,0,0,0,'apple','http://www.apple.com/trailers/@CODE@','\'(http:\\/\\/movies\\.apple\\.com\\/.*?\\.mov)\'','Apple.com trailers');
/*!40000 ALTER TABLE `jos_avr_ripper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avr_tags`
--

DROP TABLE IF EXISTS `jos_avr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avr_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  `ripper_id` int(11) NOT NULL DEFAULT '0',
  `local` int(1) NOT NULL DEFAULT '0',
  `plist` int(1) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `postreplace` varchar(255) NOT NULL DEFAULT '',
  `sampleregex` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tag` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avr_tags`
--

LOCK TABLES `jos_avr_tags` WRITE;
/*!40000 ALTER TABLE `jos_avr_tags` DISABLE KEYS */;
INSERT INTO `jos_avr_tags` VALUES (1,0,1,0,1,1,'flv','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.flv\";}','^(.+)\\.flv$','Local FLV'),(2,0,1,0,0,1,'flvremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.flv)$','Generic Remote FLV'),(3,0,1,0,1,1,'swf','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.swf\";}','^(.+)\\.swf$','Local SWF Video'),(4,0,1,0,0,1,'swfremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.swf)$','Generic Remote SWF Video'),(5,0,1,0,1,1,'mp3','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:16:\"@ALOC@@CODE@.mp3\";}','^(.+)\\.mp3$','Local MP3'),(6,0,1,0,0,1,'mp3remote','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp3)$','Generic Remote MP3'),(7,0,1,0,1,1,'mp4-flv','a:2:{s:6:\"@TYPE@\";s:3:\"flv\";s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mp4\";}','^(.+)\\.mp4$','Local MP4 (JW Media Player)'),(8,0,1,0,0,1,'mp4-flvremote','a:4:{s:7:\"@WIDTH@\";s:7:\"@WIDTH@\";s:8:\"@HEIGHT@\";s:8:\"@HEIGHT@\";s:6:\"@TYPE@\";s:3:\"flv\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp4)$','Generic Remote MP4 (JW Media Player)'),(9,0,1,0,1,1,'m4v','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.m4v\";}','^(.+)\\.m4v$','Local M4V'),(10,0,1,0,0,1,'m4vremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.m4v)$','Generic Remote M4V'),(11,0,1,0,1,1,'3gp','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.3gp\";}','^(.+)\\.3gp$','Local 3GP'),(12,0,1,0,0,1,'3gpremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.3gp)$','Generic Remote 3GP'),(13,0,1,0,1,1,'rbs','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.rbs\";}','^(.+)\\.rbs$','Local RBS'),(14,0,1,0,0,1,'rbsremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.rbs)$','Generic Remote RBS'),(15,0,1,0,1,0,'auto','a:1:{s:6:\"@MURL@\";s:12:\"@VLOC@@CODE@\";}','^(.+\\.xml)$','Local Playlist'),(16,0,1,0,0,0,'autoremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.xml)$','Generic Remote Playlist'),(17,0,2,0,1,0,'wmv','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.wmv\";}','^(.+)\\.wmv$','Local WMV'),(18,0,2,0,0,0,'wmvremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.wmv)$','Generic Remote WMV'),(19,0,2,0,1,0,'wma','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.wma\";}','^(.+)\\.wma$','Local WMA'),(20,0,2,0,0,0,'wmaremote','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.wma)$','Generic Remote WMA'),(21,0,2,0,1,0,'avi','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.avi\";}','^(.+)\\.avi$','Local AVI'),(22,0,2,0,0,0,'aviremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.avi)$','Generic Remote AVI'),(23,0,2,0,1,0,'mpg','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mpg\";}','^(.+)\\.mpg$','Local MPG'),(24,0,2,0,0,0,'mpgremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mpg)$','Generic Remote MPG'),(25,0,2,0,1,0,'mpeg','a:1:{s:6:\"@MURL@\";s:17:\"@VLOC@@CODE@.mpeg\";}','^(.+)\\.mpeg$','Local MPEG'),(26,0,2,0,0,0,'mpegremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mpeg)$','Generic Remote MPEG'),(27,0,3,0,1,0,'mov','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mov\";}','^(.+)\\.mov$','Local MOV (QuickTime)'),(28,0,3,0,0,0,'movremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mov)$','Generic Remote MOV (QuickTime)'),(29,0,3,0,1,0,'mp4','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mp4\";}','^(.+)\\.mp4','Local MP4 (QuickTime)'),(30,0,3,0,0,0,'mp4remote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp4)$','Generic Remote MP4 (QuickTime)'),(31,0,4,0,1,0,'rm','a:1:{s:6:\"@MURL@\";s:15:\"@VLOC@@CODE@.rm\";}','^(.+)\\.rm$','Local RM (RealMedia)'),(32,0,4,0,2,0,'rmremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.rm)$','Generic Remote RM (RealMedia)'),(33,0,4,0,1,0,'ram','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.ram\";}','^(.+)\\.ram$','Local RAM (RealMedia)'),(34,0,4,0,0,0,'ramremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.ram)$','Generic Remote RAM (RealMedia)'),(35,0,5,0,1,0,'divx','a:1:{s:6:\"@MURL@\";s:17:\"@VLOC@@CODE@.divx\";}','^(.+)\\.divx','Local DivX'),(36,0,5,0,0,0,'divxremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.divx)$','Generic Remote DivX'),(37,0,6,1,0,0,'6cn','','http:\\/\\/6\\.cn\\/watch\\/(\\d+)\\.html','6CN.com'),(38,0,7,0,0,0,'biku','','http:\\/\\/www\\.biku\\.com\\/opus\\/(\\d+)\\.html','Biku.com'),(39,0,8,2,0,0,'bofunk','','http:\\/\\/www.bofunk.com\\/video\\/(\\d+\\/[^\\.]+)\\.html$','Bofunk.com'),(40,0,9,3,0,0,'break','','http:\\/\\/www\\.break\\.com\\/index\\/(.*)\\.html$','Break.com'),(41,0,10,0,0,0,'clipfish','','http:\\/\\/www\\.clipfish\\.de\\/player\\.php\\?videoid=(.+)','ClipFish.de'),(42,0,11,0,0,0,'collegehumor','','http:\\/\\/www\\.collegehumor\\.com\\/video:(\\d+)','College Humor'),(43,0,12,0,0,0,'currenttv','','http:\\/\\/current\\.com\\/items\\/(\\d+)_.*','Current-TV'),(44,0,13,0,0,0,'dmotion','','http:\\/\\/www\\.dailymotion\\.com\\/.*video\\/([^_]+)_[^\\/]+$','DailyMotion.com'),(45,0,1,4,0,0,'dropshots','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','','Dropshots.com'),(46,0,14,0,0,0,'freevideoblog','','http:\\/\\/www\\.vidiac\\.com\\/video\\/([\\dabcdef\\-]+)\\.htm$','Vidiac.com (previously FreeVideoBlog)'),(47,0,15,0,0,0,'gametrailers','','http:\\/\\/www\\.gametrailers\\.com\\/player\\/(\\d+)\\.html$','GameTrailers'),(48,0,16,0,0,0,'google','a:1:{s:6:\"@LANG@\";s:2:\"en\";}','http:\\/\\/video\\.google\\.com\\/videoplay\\?docid=(-{0,1}\\d+)','Google Video (international)'),(49,0,16,0,0,0,'google.co.uk','a:1:{s:6:\"@LANG@\";s:5:\"en-GB\";}','http:\\/\\/video\\.google\\.co\\.uk\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (UK)'),(50,0,16,0,0,0,'google.com.au','a:1:{s:6:\"@LANG@\";s:5:\"en-AU\";}','http:\\/\\/video\\.google\\.com\\.au\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Australia)'),(51,0,16,0,0,0,'google.de','a:1:{s:6:\"@LANG@\";s:2:\"de\";}','http:\\/\\/video\\.google\\.de\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Germany)'),(52,0,16,0,0,0,'google.es','a:1:{s:6:\"@LANG@\";s:2:\"es\";}','http:\\/\\/video\\.google\\.es\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Spain)'),(53,0,16,0,0,0,'google.fr','a:1:{s:6:\"@LANG@\";s:2:\"fr\";}','http:\\/\\/video\\.google\\.fr\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (France)'),(54,0,16,0,0,0,'google.it','a:1:{s:6:\"@LANG@\";s:2:\"it\";}','http:\\/\\/video\\.google\\.it\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Italy)'),(55,0,16,0,0,0,'google.nl','a:1:{s:6:\"@LANG@\";s:2:\"nl\";}','http:\\/\\/video\\.google\\.nl\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Netherlands)'),(56,0,16,0,0,0,'google.pl','a:1:{s:6:\"@LANG@\";s:2:\"pl\";}','http:\\/\\/video\\.google\\.pl\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Poland)'),(57,0,17,0,0,0,'ifilm','','','Spike.com (previously iFilm.com)'),(58,0,18,0,0,0,'jumpcut','','http:\\/\\/www\\.jumpcut\\.com\\/view\\/{0,1}\\?id=([A-F\\d]+)$','JumpCut.com'),(59,0,19,5,0,0,'mega','','http:\\/\\/www\\.megavideo\\.com\\/\\?v=(\\w+)$','MegaVideo.com'),(60,0,20,0,0,0,'metacafe','','http:\\/\\/www\\.metacafe\\.com\\/watch\\/(\\d+\\/[a-z_]+)\\/$','Metacafe.com'),(61,0,21,0,0,0,'mofile','','http:\\/\\/tv\\.mofile\\.com\\/([^\\/]+)\\/$','Mofile TV'),(62,0,22,0,0,0,'myvideo','','http:\\/\\/www\\.myvideo\\.de\\/watch\\/(\\d+)','MyVideo.de'),(63,0,23,0,0,0,'quxiu','','http:\\/\\/www\\.quxiu\\.com\\/video\\/play_(\\d+_\\d+)\\.htm$','Quixu.com'),(64,0,24,0,0,0,'revver','','http:\\/\\/www\\.revver\\.com\\/video\\/(\\d+)\\/[^\\/]+\\/$','Revver.com (using Flash)'),(65,0,25,0,0,0,'seehaha','','http:\\/\\/www\\.seehaha\\.com\\/play\\/(\\d+)$','SeeHaha.com'),(66,0,26,0,0,0,'sevenload','','http:\\/\\/de\\.sevenload\\.com\\/videos\\/([^\\/\\-]{1,7})[^\\/\\-]?[\\/\\-][^\\/]+$','SevenLoad.de'),(67,0,27,0,0,0,'stickam','','http:\\/\\/www\\.stickam\\.com\\/editMediaComment\\.do\\?method=load&mId=(\\d+)$','StickAm.com'),(68,0,28,0,0,0,'streetfire','','http:\\/\\/videos\\.streetfire\\.net\\/video\\/([\\dabcdef-]+)\\.htm$','StreetFire Videos (Old variant)'),(69,0,29,6,0,0,'ted','','http:\\/\\/www\\.ted\\.com\\/(?:index\\.php\\/)?talks\\/view\\/id\\/(\\d+)$','TED.com (Original Player)'),(70,0,30,7,0,0,'ted2','','http:\\/\\/www\\.ted\\.com\\/index\\.php\\/talks\\/view\\/id\\/(\\d+)$','TED.com (Foreign Player)'),(71,0,31,0,0,0,'tudou','','http:\\/\\/www\\.tudou\\.com\\/programs\\/view\\/([^\\/]+)\\/$','Tudou.com'),(72,0,32,0,0,0,'uume','','http:\\/\\/www\\.uume\\.com\\/play_([^\\/]+)$','Uume.com'),(73,0,33,0,0,0,'vimeo','','http:\\/\\/(?:www\\.)?vimeo\\.com\\/(\\d+)$','Vimeo'),(74,0,34,0,0,0,'virb','','','Virb.com'),(75,0,1,0,0,0,'wangyou','a:1:{s:6:\"@MURL@\";s:50:\"http://v.wangyou.com/playlistMedia.php%3Fid=@CODE@\";}','http:\\/\\/v\\.wangyou\\.com\\/p([^\\.]+)\\.html','WangYou.com'),(76,0,36,8,0,0,'yahoo','','http:\\/\\/video\\.yahoo\\.com\\/watch\\/(\\d+)\\/.*$','Yahoo Video'),(77,0,37,0,0,0,'youtube','','http:\\/\\/(?:\\w+\\.)?youtube\\.com\\/watch\\?.*v=([^&]+).*$','YouTube (Original Player)'),(78,0,1,0,0,1,'youtubejw','a:2:{s:10:\"@IFS(IMG)@\";s:59:\"image:\'http://i.ytimg.com/vi/@CODE@/default.jpg\',@IFS(IMG)@\";s:6:\"@MURL@\";s:41:\"http://www.youtube.com/watch%3Fv%3D@CODE@\";}','http:\\/\\/(?:\\w+\\.)?youtube\\.com\\/watch\\?.*v=([^&]+).*$','YouTube (JW Media Player)'),(81,0,3,0,0,0,'revver-mov','a:1:{s:6:\"@MURL@\";s:50:\"http://media.revver.com/broadcast/@CODE@/video.mov\";}','','Revver.com (using QuickTime)'),(82,0,28,9,0,0,'streetfire2','','http:\\/\\/videos\\.streetfire\\.net\\/video\\/([^\\/\\.]+)\\.htm$','StreetFire Videos'),(83,0,14,0,0,0,'vidiac','','http:\\/\\/www\\.vidiac\\.com\\/video\\/([\\dabcdef\\-]+)\\.htm$','Vidiac.com (previously FreeVideoBlog)'),(84,0,39,0,1,0,'flash','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.swf\";}','^(.+)\\.swf$','Plain local flash embedding (for flash animations)'),(85,0,39,0,0,0,'flashremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.swf)$','Plain remote flash embedding (for flash animations)'),(86,0,17,0,0,0,'spike','','^http:\\/\\/www\\.spike\\.com\\/video\\/.*\\/(\\d+)$','Spike.com (previously iFilm.com)'),(87,0,40,0,0,0,'bcove','','^http:\\/\\/www\\.brightcove\\.tv\\/title\\.jsp\\?title=(\\d+).*$','Brightcove.tv'),(88,0,41,10,0,0,'myshows','','http:\\/\\/www\\.myshows\\.cn\\/myplayvideo\\.aspx\\?vid=(\\d+)','Myshows.cn (previouslyly seehaha.com)'),(89,0,34,11,0,0,'virb2','','http:\\/\\/www\\.virb\\.com\\/(.*)$','Virb.com'),(90,0,42,12,0,0,'blip','','^http:\\/\\/(?:www\\.)?blip\\.tv\\/file\\/(\\d+).*','Blip.tv'),(91,0,1,12,0,0,'blipjw','a:1:{s:6:\"@MURL@\";s:57:\"http://blip.tv/rss/flash/@CODE@?referrer=blip.tv&source=1\";}','^http:\\/\\/(?:www\\.)?blip\\.tv\\/file\\/(\\d+)\\?.*','Blip.tv using JW Media Player'),(92,0,3,13,0,0,'apple','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^http:\\/\\/www\\.apple\\.com\\/trailers\\/(.*)','Apple.com trailers'),(93,0,39,0,0,0,'movieweb','a:1:{s:6:\"@MURL@\";s:32:\"http://www.movieweb.com/v/@CODE@\";}','http:\\/\\/www\\.movieweb\\.com\\/video\\/(\\w+)$','MovieWeb');
/*!40000 ALTER TABLE `jos_avr_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avrbak_avr_player`
--

DROP TABLE IF EXISTS `jos_avrbak_avr_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avrbak_avr_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `minw` int(11) NOT NULL DEFAULT '0',
  `minh` int(11) NOT NULL DEFAULT '0',
  `isjw` int(1) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `code` mediumtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avrbak_avr_player`
--

LOCK TABLES `jos_avrbak_avr_player` WRITE;
/*!40000 ALTER TABLE `jos_avrbak_avr_player` DISABLE KEYS */;
INSERT INTO `jos_avrbak_avr_player` VALUES (1,0,0,0,1,'flv','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@RLOC@mediaplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\n{file:\'@MURL@\',width:\'@WIDTH@\',height:\'@HEIGHT@\',@IF(ENABLEJS)@javascriptid:\'p_@DIVID@\',\n@/IF@@IFS(PLTHUMBS)@thumbsinplaylist:\'@PLTHUMBS@\',\n@/IFS@@IF(AUTOSCROLL)@autoscroll:\'@AUTOSCROLL@\',\n@/IF@@IFS(TYPE)@type:\'@TYPE@\',\n@/IFS@@IFS(VOLUME)@volume:\'@VOLUME@\',\n@/IFS@@IFS(CFG)@config:\'@CFG@\',\n@/IFS@@IFS(LINK)@link:\'@LINK@\',\n@/IFS@@IFS(IMG)@image:\'@IMG@\',\n@/IFS@@IFS(LINK)@linkfromdisplay:\'@LINKFROMDISPLAY@\',\n@/IFS@@IFS(LINK)@linktarget:\'@LINKTARGET@\',\n@/IFS@@IFS(REPEAT)@repeat:\'@REPEAT@\',\n@/IFS@@IFS(SHUFFLE)@shuffle:\'@SHUFFLE@\',\n@/IFS@@IFS(RECURL)@recommendations:\'@RECURL@\',\n@/IFS@@IFS(DISPLAYWIDTH)@displaywidth:\'@DISPLAYWIDTH@\',\n@/IFS@@IFS(DISPLAYHEIGHT)@displayheight:\'@DISPLAYHEIGHT@\',\n@/IFS@@IFS(LOGO)@logo:\'@LOGO@\',\n@/IFS@@IFS(CAPTIONS)@captions:\'@CAPTIONS@\',\n@/IFS@@IFS(USECAPTIONS)@usecaptions:\'@USECAPTIONS@\',\n@/IFS@@IFS(SEARCHLINK)@searchlink:\'@SEARCHLINK@\',\n@/IFS@showeq:\'@SHOWEQ@\',searchbar:\'@SEARCHBAR@\',enablejs:\'@ENABLEJS@\',autostart:\'@AUTOSTART@\',showicons:\'@SHOWICONS@\',@IF(!SHOWNAV)@shownavigation:\'@SHOWNAV@\',@/IF@@IF(SHOWNAV)@showstop:\'@SHOWSTOP@\',showdigits:\'@SHOWDIGITS@\',\nshowdownload:\'@SHOWDOWNLOAD@\',@/IF@usefullscreen:\'@USEFULLSCREEN@\',backcolor:\'@PBGCOLOR@\',frontcolor:\'@PFGCOLOR@\',\nlightcolor:\'@PHICOLOR@\',screencolor:\'@PSCCOLOR@\',overstretch:\'@STRETCH@\'}\n,{allowscriptaccess:\'always\',seamlesstabbing:\'true\',allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','JW Media Player'),(2,0,0,0,0,'wmv','<object classid=\"CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6\"\n type=\"application/x-oleobject\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\">\n<param name=\"URL\" value=\"@MURL@\" />\n<param name=\"stretchToFit\" value=\"1\" />\n<param name=\"showControls\" value=\"1\" />\n<param name=\"showStatusBar\" value=\"0\" />\n<param name=\"animationAtStart\" value=\"1\" />\n<param name=\"autoStart\" value=\"@AUTOSTART!d@\" />\n<param name=\"enableFullScreenControls\" value=\"@USEFULLSCREEN!d@\" \n/><embed src=\"@MURL@\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" autoStart=\"@AUTOSTART!d@\" animationAtStart=\"1\" enableFullScreenControls=\"@USEFULLSCREEN!d@\" type=\"application/x-mplayer2\"/></embed></object>','Windows Media Player'),(3,0,0,0,0,'mov','<object codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\"><param name=\"src\" value=\"@MURL@\" /><param name=\"controller\" value=\"True\" /><param name=\"cache\" value=\"False\" /><param name=\"autoplay\" value=\"@AUTOSTART@\" /><param name=\"kioskmode\" value=\"False\" /><param name=\"scale\" value=\"tofit\" /><embed src=\"@MURL@\" pluginspage=\"http://www.apple.com/quicktime/download/\" scale=\"tofit\" kioskmode=\"False\" qtsrc=\"@MURL@\" cache=\"False\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" controller=\"True\" type=\"video/quicktime\" autoplay=\"@AUTOSTART@\" /></object>','QuickTime Player'),(4,0,0,0,0,'rm','<object classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\"><param name=\"controls\" value=\"ControlPanel\" /><param name=\"autostart\" value=\"@AUTOSTART!d@\" /><param name=\"src\" value=\"@MURL@\" /><embed src=\"@MURL@\" type=\"audio/x-pn-realaudio-plugin\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" controls=\"ControlPanel\" autostart=\"@AUTOSTART!d@\" /></object>','Real Media Player'),(5,0,0,0,0,'divx','<object classid=\"CLSID:67DABFBF-D0AB-41fa-9C46-CC0F21721616\"\ncodebase=\"http://download.divx.com/webplayer/stage6/windows/AutoDLDivXWebPlayerInstaller.cab\" \n type=\"application/x-oleobject\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\">\n<param name=\"src\" value=\"@MURL@\" />\n<param name=\"custommode\" value=\"Stage6\" />\n<param name=\"showControls\" value=\"1\" />\n<param name=\"showpostplaybackad\" value=\"false\" />\n<param name=\"allowContextMenu\" value=\"@MENU@\" />\n@IFS(IMG)@<param name=\"previewImage\" value=\"@IMG@\" />\n@/IFS@<param name=\"autoplay\" value=\"@AUTOSTART@\" \n/><embed type=\"video/divx\" src=\"@MURL@\" style=\"width: @WIDTH@px; height: @HEIGHT@px;\" pluginspage=\"http://go.divx.com/plugin/download/\" showpostplaybackad=\"false\" custommode=\"Stage6\" autoplay=\"@AUTOSTART@\" allowContextMenu=\"@MENU@\"@@IFS(IMG)@ previewImage=\"@IMG@\"@/IFS@/></object>','DivX Webplayer'),(6,0,0,0,0,'6cn','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://6.cn/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{vid:\'@CODE@\',flag:\'1\'},{allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','6Cn.com original player'),(7,0,0,0,0,'biku','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.biku.com/opus/player.swf?VideoID=@CODE@&embed=true&autoStart=@AUTOSTART@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',menu:\'@MENU@\',bgcolor:\'@BGCOLOR@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Biku.com original player'),(8,0,0,0,0,'bofunk','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Bofunk.com original player'),(9,0,0,0,0,'break','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Break.com original player'),(10,0,0,0,0,'clipfish','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.clipfish.de/videoplayer.swf?videoid=@CODE@&r=1\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','ClipFish.de original player'),(11,0,0,0,0,'collegehumor','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.collegehumor.com/moogaloop/moogaloop.swf?clip_id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','CollegeHumor original player'),(12,0,420,340,0,'currenttv','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://current.com/e/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','CurrentTV original player'),(13,0,0,0,0,'dmotion','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.dailymotion.com/swf/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{v3:\'1\',related:\'0\',autoPlay:\'@AUTOSTART!d@\',colors:\'background:DDDDDD;glow:FFFFFF;foreground:333333;special:FFC300;\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'allways\',allowfullscreen:\'true\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','DailyMotion.com original player'),(14,0,0,0,0,'vidiac','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.vidiac.com/vidiac.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{name:\'ePlayer\',video:\'@CODE@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Vidiac.com original player'),(15,0,0,0,0,'gametrailers','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.gametrailers.com/remote_wrap.php?mid=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','GameTrailers.com original player'),(16,0,0,0,0,'google','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://video.google.com/googleplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{@IF(AUTOSTART)@autoPlay:\'true\',@/IF@docId:\'@CODE@\',hl:\'@LANG@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Google Video original player'),(17,0,0,0,0,'spike','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.spike.com/efp\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{flvBaseClip:\'@CODE@\'},{name:\'efp\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Spike.com original player (previously iFilm.com)'),(18,0,0,0,0,'jumpcut','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.jumpcut.com/media/flash/jump.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{asset_type:\'movie\',asset_id:\'@CODE@\',eb:\'1\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','JumpCut.com original player'),(19,0,0,0,0,'mega','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://wwwstatic.megavideo.com/tmp_mvplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{waitingtime:\'0\',flv:\'@CODE@\',k:\'@RRESA@\',poker:\'0\',v:\'@OCODE@\',rel_again:\'Play again\',rel_other:\'Related videos\',u:\'\',user:\'\',from:\'from:\',views:\'views\',vid_time:\'@RRESB@\',vid_name:\'\',videoname:\'\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'sameDomain\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MegaVideo.com original player'),(20,0,0,0,0,'metacafe','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.metacafe.com/fplayer/@CODE@.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{altServerURL:\'http://www.metacafe.com\',playerVars:\'showStats=no|autoPlay=no|videoTitle=\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MetaCafe.com original player'),(21,0,0,0,0,'mofile','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://tv.mofile.com/cn/xplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{v:\'@CODE@\',autoplay:\'0\'},{wmode:\'@WMODE@\',allowScriptAccess:\'always\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Mofile.com original player'),(22,0,0,0,0,'myvideo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.myvideo.de/movie/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','MyVideo.com original player'),(23,0,0,0,0,'quxiu','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.quxiu.com/photo/swf/swfobj.swf?id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Quixu.com original player'),(24,0,0,0,0,'revver','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://flash.revver.com/player/1.0/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{mediaId:\'@CODE@\',javascriptContext:\'true\',skinURL:\'http://flash.revver.com/player/1.0/skins/Default_Raster.swf\',skinImgURL:\'http://flash.revver.com/player/1.0/skins/night_skin.png\',actionBarSkinURL:\'http://flash.revver.com/player/1.0/skins/DefaultNavBarSkin.swf\',resizeVideo:\'true\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Revver.com original player'),(25,0,0,0,0,'seehaha','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.seehaha.com/flash/playvid2.swf?vidID=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','SeeHaha.com original player'),(26,0,0,0,0,'sevenload','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://de.sevenload.com/pl/@CODE@/503x403/swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',allowscriptaccess:\'always\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'\n},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','SevenLoad.com original player'),(27,0,0,0,0,'stickam','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.stickam.com/flashVarMediaPlayer/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',scale:\'noscale\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','StickAm.com original player'),(28,0,0,0,0,'streetfire','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://videos.streetfire.net/vidiac.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{name:\'ePlayer\',video:\'@CODE@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','StreetFire original player'),(29,0,432,285,0,'ted','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.ted.com/swf/videoplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{jsonStr:\'@CODE@\',flashID:\'swfVideoPlayer\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'always\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','TED.com original player'),(30,0,0,0,0,'ted2','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://static.videoegg.com/ted/flash/loader.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'8.0.0\',@XPINST@,\n{file:\'@CODE@\',autoPlay:\'@AUTOSTART@\',allowFullscreen:\'@USEFULLSCREEN@\',forcePlay:\'false\',logo:\'\',fullscreenURL:\'http://static.videoegg.com/ted/flash/fullscreen.html\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'always\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','TED.com alternative player'),(31,0,0,0,0,'tudou','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.tudou.com/v/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Tudou.com original player'),(32,0,0,0,0,'uume','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.uume.com/v/@CODE@_UUME\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Uume.com original player'),(33,0,0,0,0,'vimeo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.vimeo.com/moogaloop.swf?clip_id=@CODE@&server=www.vimeo.com&show_title=1&show_byline=1&show_portrait=0&autoplay=@AUTOSTART!d@&fullscreen=@USEFULLSCREEN!d@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',allowfullscreen:\'true\',scale:\'showall\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Vimeo.com original player'),(34,0,0,0,0,'virb','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.virb.com/external/video/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',salign:\'tl\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Virb.com original player'),(35,0,0,0,0,'wangyou','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://v.wangyou.com/images/x_player.swf?id=@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\nfalse,{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','WangYou.com original player'),(36,0,0,0,0,'yahoo','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://d.yimg.com/static.video.yahoo.com/yep/YV_YEP.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{onsite:\'0\',embed:\'1\',id:\'@CODE@\'},{allowfullscreen:\'@USEFULLSCREEN@\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Yahoo video original player'),(37,0,0,0,0,'youtube','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.youtube.com/v/@CODE@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{autoplay:\'@AUTOSTART!d@\',color1:\'@PBGCOLOR@\',color2:\'@PHICOLOR@\',rel:\'@YTREL!d@\',egm:\'@YTEGM!d@\',border:\'@YTBORDER!d@\',loop:\'@YTLOOP!d@\'},{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','YouTube original player'),(38,0,0,0,0,'jwwmv','<script type=\"text/javascript\">\nnew jeroenwijering.Player($(\'@DIVID@\'),\'@RLOC@wmvplayer.xaml\',\n{file:\'@MURL@\',width:\'@WIDTH@\',height:\'@HEIGHT@\',@IF(ENABLEJS)@javascriptid:\'p_@DIVID@\',\n@/IF@@IFS(PLTHUMBS)@thumbsinplaylist:\'@PLTHUMBS@\',\n@/IFS@@IF(AUTOSCROLL)@autoscroll:\'@AUTOSCROLL@\',\n@/IF@@IFS(TYPE)@type:\'@TYPE@\',\n@/IFS@@IFS(CFG)@config:\'@CFG@\',\n@/IFS@@IFS(LINK)@link:\'@LINK@\',\n@/IFS@@IFS(IMG)@image:\'@IMG@\',\n@/IFS@@IFS(LINK)@linkfromdisplay:\'@LINKFROMDISPLAY@\',\n@/IFS@@IFS(LINK)@linktarget:\'@LINKTARGET@\',\n@/IFS@@IFS(REPEAT)@repeat:\'@REPEAT@\',\n@/IFS@@IFS(SHUFFLE)@shuffle:\'@SHUFFLE@\',\n@/IFS@@IFS(RECURL)@recommendations:\'@RECURL@\',\n@/IFS@@IFS(DISPLAYWIDTH)@displaywidth:\'@DISPLAYWIDTH@\',\n@/IFS@@IFS(DISPLAYHEIGHT)@displayheight:\'@DISPLAYHEIGHT@\',\n@/IFS@@IFS(LOGO)@logo:\'@LOGO@\',\n@/IFS@@IFS(SEARCHLINK)@searchlink:\'@SEARCHLINK@\',\n@/IFS@showeq:\'@SHOWEQ@\',searchbar:\'@SEARCHBAR@\',enablejs:\'@ENABLEJS@\',autostart:\'@AUTOSTART@\',showicons:\'@SHOWICONS@\',@IF(!SHOWNAV)@shownavigation:\'@SHOWNAV@\',@/IF@@IF(SHOWNAV)@showstop:\'@SHOWSTOP@\',showdigits:\'@SHOWDIGITS@\',\nshowdownload:\'@SHOWDOWNLOAD@\',@/IF@usefullscreen:\'@USEFULLSCREEN@\',backcolor:\'@PBGCOLOR@\',frontcolor:\'@PFGCOLOR@\',\nlightcolor:\'@PHICOLOR@\',screencolor:\'@PSCCOLOR@\',overstretch:\'@STRETCH@\'}\n);\n</script>','JW WMV Player (needs MS-SilverLight)'),(39,0,0,0,0,'swf','<script type=\"text/javascript\">\nswfobject.embedSWF(\'@MURL@\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\nfalse,{allowscriptaccess:\'always\',seamlesstabbing:\'true\',allowfullscreen:\'true\',wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Plain flash embedding (for flash animations)'),(40,0,0,0,0,'brightcove','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.brightcove.tv/playerswf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{initVideoId:\'@CODE@\',servicesURL:\'http://www.brightcove.tv\',\nviewerSecureGatewayURL:\'https://www.brightcove.tv\',\ncdnURL:\'http://admin.brightcove.com\',autoStart:\'@AUTOSTART@\'},\n{base:\'http://admin.brightcove.com\',\nwmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',allowFullScreen:\'true\',\nallowScriptAccess:\'always\',seamlesstabbing:\'false\',swLiveConnect:\'true\'\n,menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Brightcove.tv original player'),(41,0,0,0,0,'myshows','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://www.seehaha.com/flash/player.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'9.0.28\',@XPINST@,\n{vidFileName:\'@CODE@\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Myshows.cn (previouslyly seehaha.com)'),(42,0,0,0,0,'blip','<script type=\"text/javascript\">\nswfobject.embedSWF(\'http://blip.tv/scripts/flash/showplayer.swf\',\'@DIVID@\',\'@WIDTH@\',\'@HEIGHT@\',\'@FLASHVER@\',@XPINST@,\n{file:\'http://blip.tv/rss/flash/@CODE@?referrer=blip.tv&source=1\',enablejs:\'true\',feedurl:\'http://WatchMojo.blip.tv/rss\',\nshowplayerpath:\'showplayerpath=http://blip.tv/scripts/flash/showplayer.swf\'},\n{wmode:\'@WMODE@\',bgcolor:\'@BGCOLOR@\',quality:\'high\',allowScriptAccess:\'sameDomain\',allowFullScreen:\'@USEFULLSCREEN@\',menu:\'@MENU@\'},\n{id:\'p_@DIVID@\',styleclass:\'@AVCSS@\'});\n</script>','Blip.tv original player');
/*!40000 ALTER TABLE `jos_avrbak_avr_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avrbak_avr_ripper`
--

DROP TABLE IF EXISTS `jos_avrbak_avr_ripper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avrbak_avr_ripper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cindex` int(11) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL,
  `regex` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avrbak_avr_ripper`
--

LOCK TABLES `jos_avrbak_avr_ripper` WRITE;
/*!40000 ALTER TABLE `jos_avrbak_avr_ripper` DISABLE KEYS */;
INSERT INTO `jos_avrbak_avr_ripper` VALUES (1,0,0,0,'6cn','http://6.cn/watch/@CODE@.html','pageMessage.evid\\s*=\\s*\'([^\']+)\'\\s*;','6CN.com'),(2,0,0,0,'bofunk','http://www.bofunk.com/video/@CODE@.html','<input\\stype=\'text\'\\svalue=\'<embed\\ssrc=\"([^\"]+)\"','Bofunk.com'),(3,0,0,0,'break','http://www.break.com/index/@CODE@.html','<param name=\"movie\" value=\"([^\"]+)\">','Break.com'),(4,0,0,0,'dropshots','http://www.dropshots.com/V1.0/Media.getList?appid=dropshots&username=@USER@&min_taken_date=@CODE@&passwordprotection=false&output=xml','<video>(.+)</video>','Dropshots.com'),(5,0,0,0,'mega','http://www.megavideo.com/?v=@CODE@','addVariable\\s*\\(\\s*\"flv\"\\s*,\\s*\"([^\"]+)\"[\\s\\S]*?addVariable\\s*\\(\\s*\"k\"\\s*,\\s*\"([^\"]+)\"[\\s\\S]*?addVariable\\s*\\(\\s*\"vid_time\"\\s*,\\s*\"([^\"]+)\"','MegaVideo.com'),(6,0,0,0,'ted','http://www.ted.com/index.php/talks/view/id/@CODE@','firstRun\\s*=\\s*\"([^\"]+)\"','TED.com'),(7,0,0,0,'ted2','http://www.ted.com/index.php/talks/view/id/@CODE@','paste-->.+&file=([^&]+).*</object>','TED.com (for alternate player)'),(8,0,0,0,'yahoo','http://video.yahoo.com/watch/@CODE@','addVariable\\s*\\(\\s*\"id\"\\s*,\\s*\"([^\"]+)\"','Yahoo Video'),(9,0,0,0,'streetfire','http://videos.streetfire.net/video/@CODE@.htm','_embedCodeID.*video=([\\dabcdef\\-]+)','StreetFire'),(10,0,0,0,'myshows','http://www.myshows.cn/myplayvideo.aspx?vid=@CODE@','vidFileName=([^\"]+)','Myshows.cn (previouslyly seehaha.com)'),(11,0,0,0,'virb','http://www.virb.com/@CODE@','external/video/([^&\"]+)','Virb.com'),(12,0,0,0,'blip','http://www.blip.tv/file/@CODE@','setPostsId\\s*\\(\\s*(\\d+)\\s*\\)','Blip.tv'),(13,0,0,0,'apple','http://www.apple.com/trailers/@CODE@','\'(http:\\/\\/movies\\.apple\\.com\\/.*?\\.mov)\'','Apple.com trailers');
/*!40000 ALTER TABLE `jos_avrbak_avr_ripper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_avrbak_avr_tags`
--

DROP TABLE IF EXISTS `jos_avrbak_avr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_avrbak_avr_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  `ripper_id` int(11) NOT NULL DEFAULT '0',
  `local` int(1) NOT NULL DEFAULT '0',
  `plist` int(1) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `postreplace` varchar(255) NOT NULL DEFAULT '',
  `sampleregex` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tag` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_avrbak_avr_tags`
--

LOCK TABLES `jos_avrbak_avr_tags` WRITE;
/*!40000 ALTER TABLE `jos_avrbak_avr_tags` DISABLE KEYS */;
INSERT INTO `jos_avrbak_avr_tags` VALUES (1,0,1,0,1,1,'flv','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.flv\";}','^(.+)\\.flv$','Local FLV'),(2,0,1,0,0,1,'flvremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.flv)$','Generic Remote FLV'),(3,0,1,0,1,1,'swf','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.swf\";}','^(.+)\\.swf$','Local SWF Video'),(4,0,1,0,0,1,'swfremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.swf)$','Generic Remote SWF Video'),(5,0,1,0,1,1,'mp3','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:16:\"@ALOC@@CODE@.mp3\";}','^(.+)\\.mp3$','Local MP3'),(6,0,1,0,0,1,'mp3remote','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp3)$','Generic Remote MP3'),(7,0,1,0,1,1,'mp4-flv','a:2:{s:6:\"@TYPE@\";s:3:\"flv\";s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mp4\";}','^(.+)\\.mp4$','Local MP4 (JW Media Player)'),(8,0,1,0,0,1,'mp4-flvremote','a:4:{s:7:\"@WIDTH@\";s:7:\"@WIDTH@\";s:8:\"@HEIGHT@\";s:8:\"@HEIGHT@\";s:6:\"@TYPE@\";s:3:\"flv\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp4)$','Generic Remote MP4 (JW Media Player)'),(9,0,1,0,1,1,'m4v','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.m4v\";}','^(.+)\\.m4v$','Local M4V'),(10,0,1,0,0,1,'m4vremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.m4v)$','Generic Remote M4V'),(11,0,1,0,1,1,'3gp','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.3gp\";}','^(.+)\\.3gp$','Local 3GP'),(12,0,1,0,0,1,'3gpremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.3gp)$','Generic Remote 3GP'),(13,0,1,0,1,1,'rbs','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.rbs\";}','^(.+)\\.rbs$','Local RBS'),(14,0,1,0,0,1,'rbsremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.rbs)$','Generic Remote RBS'),(15,0,1,0,1,0,'auto','a:1:{s:6:\"@MURL@\";s:12:\"@VLOC@@CODE@\";}','^(.+\\.xml)$','Local Playlist'),(16,0,1,0,0,0,'autoremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.xml)$','Generic Remote Playlist'),(17,0,2,0,1,0,'wmv','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.wmv\";}','^(.+)\\.wmv$','Local WMV'),(18,0,2,0,0,0,'wmvremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.wmv)$','Generic Remote WMV'),(19,0,2,0,1,0,'wma','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.wma\";}','^(.+)\\.wma$','Local WMA'),(20,0,2,0,0,0,'wmaremote','a:3:{s:7:\"@WIDTH@\";s:8:\"@AWIDTH@\";s:8:\"@HEIGHT@\";s:9:\"@AHEIGHT@\";s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.wma)$','Generic Remote WMA'),(21,0,2,0,1,0,'avi','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.avi\";}','^(.+)\\.avi$','Local AVI'),(22,0,2,0,0,0,'aviremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.avi)$','Generic Remote AVI'),(23,0,2,0,1,0,'mpg','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mpg\";}','^(.+)\\.mpg$','Local MPG'),(24,0,2,0,0,0,'mpgremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mpg)$','Generic Remote MPG'),(25,0,2,0,1,0,'mpeg','a:1:{s:6:\"@MURL@\";s:17:\"@VLOC@@CODE@.mpeg\";}','^(.+)\\.mpeg$','Local MPEG'),(26,0,2,0,0,0,'mpegremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mpeg)$','Generic Remote MPEG'),(27,0,3,0,1,0,'mov','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mov\";}','^(.+)\\.mov$','Local MOV (QuickTime)'),(28,0,3,0,0,0,'movremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mov)$','Generic Remote MOV (QuickTime)'),(29,0,3,0,1,0,'mp4','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.mp4\";}','^(.+)\\.mp4','Local MP4 (QuickTime)'),(30,0,3,0,0,0,'mp4remote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.mp4)$','Generic Remote MP4 (QuickTime)'),(31,0,4,0,1,0,'rm','a:1:{s:6:\"@MURL@\";s:15:\"@VLOC@@CODE@.rm\";}','^(.+)\\.rm$','Local RM (RealMedia)'),(32,0,4,0,2,0,'rmremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.rm)$','Generic Remote RM (RealMedia)'),(33,0,4,0,1,0,'ram','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.ram\";}','^(.+)\\.ram$','Local RAM (RealMedia)'),(34,0,4,0,0,0,'ramremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.ram)$','Generic Remote RAM (RealMedia)'),(35,0,5,0,1,0,'divx','a:1:{s:6:\"@MURL@\";s:17:\"@VLOC@@CODE@.divx\";}','^(.+)\\.divx','Local DivX'),(36,0,5,0,0,0,'divxremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.divx)$','Generic Remote DivX'),(37,0,6,1,0,0,'6cn','','http:\\/\\/6\\.cn\\/watch\\/(\\d+)\\.html','6CN.com'),(38,0,7,0,0,0,'biku','','http:\\/\\/www\\.biku\\.com\\/opus\\/(\\d+)\\.html','Biku.com'),(39,0,8,2,0,0,'bofunk','','http:\\/\\/www.bofunk.com\\/video\\/(\\d+\\/[^\\.]+)\\.html$','Bofunk.com'),(40,0,9,3,0,0,'break','','http:\\/\\/www\\.break\\.com\\/index\\/(.*)\\.html$','Break.com'),(41,0,10,0,0,0,'clipfish','','http:\\/\\/www\\.clipfish\\.de\\/player\\.php\\?videoid=(.+)','ClipFish.de'),(42,0,11,0,0,0,'collegehumor','','http:\\/\\/www\\.collegehumor\\.com\\/video:(\\d+)','College Humor'),(43,0,12,0,0,0,'currenttv','','http:\\/\\/current\\.com\\/items\\/(\\d+)_.*','Current-TV'),(44,0,13,0,0,0,'dmotion','','http:\\/\\/www\\.dailymotion\\.com\\/.*video\\/([^_]+)_[^\\/]+$','DailyMotion.com'),(45,0,1,4,0,0,'dropshots','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','','Dropshots.com'),(46,0,14,0,0,0,'freevideoblog','','http:\\/\\/www\\.vidiac\\.com\\/video\\/([\\dabcdef\\-]+)\\.htm$','Vidiac.com (previously FreeVideoBlog)'),(47,0,15,0,0,0,'gametrailers','','http:\\/\\/www\\.gametrailers\\.com\\/player\\/(\\d+)\\.html$','GameTrailers'),(48,0,16,0,0,0,'google','a:1:{s:6:\"@LANG@\";s:2:\"en\";}','http:\\/\\/video\\.google\\.com\\/videoplay\\?docid=(-{0,1}\\d+)','Google Video (international)'),(49,0,16,0,0,0,'google.co.uk','a:1:{s:6:\"@LANG@\";s:5:\"en-GB\";}','http:\\/\\/video\\.google\\.co\\.uk\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (UK)'),(50,0,16,0,0,0,'google.com.au','a:1:{s:6:\"@LANG@\";s:5:\"en-AU\";}','http:\\/\\/video\\.google\\.com\\.au\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Australia)'),(51,0,16,0,0,0,'google.de','a:1:{s:6:\"@LANG@\";s:2:\"de\";}','http:\\/\\/video\\.google\\.de\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Germany)'),(52,0,16,0,0,0,'google.es','a:1:{s:6:\"@LANG@\";s:2:\"es\";}','http:\\/\\/video\\.google\\.es\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Spain)'),(53,0,16,0,0,0,'google.fr','a:1:{s:6:\"@LANG@\";s:2:\"fr\";}','http:\\/\\/video\\.google\\.fr\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (France)'),(54,0,16,0,0,0,'google.it','a:1:{s:6:\"@LANG@\";s:2:\"it\";}','http:\\/\\/video\\.google\\.it\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Italy)'),(55,0,16,0,0,0,'google.nl','a:1:{s:6:\"@LANG@\";s:2:\"nl\";}','http:\\/\\/video\\.google\\.nl\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Netherlands)'),(56,0,16,0,0,0,'google.pl','a:1:{s:6:\"@LANG@\";s:2:\"pl\";}','http:\\/\\/video\\.google\\.pl\\/videoplay\\?docid=(-{0,1}\\d+)$','Google Video (Poland)'),(57,0,17,0,0,0,'ifilm','','','Spike.com (previously iFilm.com)'),(58,0,18,0,0,0,'jumpcut','','http:\\/\\/www\\.jumpcut\\.com\\/view\\/{0,1}\\?id=([A-F\\d]+)$','JumpCut.com'),(59,0,19,5,0,0,'mega','','http:\\/\\/www\\.megavideo\\.com\\/\\?v=(\\w+)$','MegaVideo.com'),(60,0,20,0,0,0,'metacafe','','http:\\/\\/www\\.metacafe\\.com\\/watch\\/(\\d+\\/[a-z_]+)\\/$','Metacafe.com'),(61,0,21,0,0,0,'mofile','','http:\\/\\/tv\\.mofile\\.com\\/([^\\/]+)\\/$','Mofile TV'),(62,0,22,0,0,0,'myvideo','','http:\\/\\/www\\.myvideo\\.de\\/watch\\/(\\d+)','MyVideo.de'),(63,0,23,0,0,0,'quxiu','','http:\\/\\/www\\.quxiu\\.com\\/video\\/play_(\\d+_\\d+)\\.htm$','Quixu.com'),(64,0,24,0,0,0,'revver','','http:\\/\\/www\\.revver\\.com\\/video\\/(\\d+)\\/[^\\/]+\\/$','Revver.com (using Flash)'),(65,0,25,0,0,0,'seehaha','','http:\\/\\/www\\.seehaha\\.com\\/play\\/(\\d+)$','SeeHaha.com'),(66,0,26,0,0,0,'sevenload','','http:\\/\\/de\\.sevenload\\.com\\/videos\\/([^\\/\\-]{1,7})[^\\/\\-]?[\\/\\-][^\\/]+$','SevenLoad.de'),(67,0,27,0,0,0,'stickam','','http:\\/\\/www\\.stickam\\.com\\/editMediaComment\\.do\\?method=load&mId=(\\d+)$','StickAm.com'),(68,0,28,0,0,0,'streetfire','','http:\\/\\/videos\\.streetfire\\.net\\/video\\/([\\dabcdef-]+)\\.htm$','StreetFire Videos (Old variant)'),(69,0,29,6,0,0,'ted','','http:\\/\\/www\\.ted\\.com\\/(?:index\\.php\\/)?talks\\/view\\/id\\/(\\d+)$','TED.com (Original Player)'),(70,0,30,7,0,0,'ted2','','http:\\/\\/www\\.ted\\.com\\/index\\.php\\/talks\\/view\\/id\\/(\\d+)$','TED.com (Foreign Player)'),(71,0,31,0,0,0,'tudou','','http:\\/\\/www\\.tudou\\.com\\/programs\\/view\\/([^\\/]+)\\/$','Tudou.com'),(72,0,32,0,0,0,'uume','','http:\\/\\/www\\.uume\\.com\\/play_([^\\/]+)$','Uume.com'),(73,0,33,0,0,0,'vimeo','','http:\\/\\/(?:www\\.)?vimeo\\.com\\/(\\d+)$','Vimeo'),(74,0,34,0,0,0,'virb','','','Virb.com'),(75,0,1,0,0,0,'wangyou','a:1:{s:6:\"@MURL@\";s:50:\"http://v.wangyou.com/playlistMedia.php%3Fid=@CODE@\";}','http:\\/\\/v\\.wangyou\\.com\\/p([^\\.]+)\\.html','WangYou.com'),(76,0,36,8,0,0,'yahoo','','http:\\/\\/video\\.yahoo\\.com\\/watch\\/(\\d+)\\/.*$','Yahoo Video'),(77,0,37,0,0,0,'youtube','','http:\\/\\/(?:\\w+\\.)?youtube\\.com\\/watch\\?.*v=([^&]+).*$','YouTube (Original Player)'),(78,0,1,0,0,1,'youtubejw','a:2:{s:10:\"@IFS(IMG)@\";s:59:\"image:\'http://i.ytimg.com/vi/@CODE@/default.jpg\',@IFS(IMG)@\";s:6:\"@MURL@\";s:41:\"http://www.youtube.com/watch%3Fv%3D@CODE@\";}','http:\\/\\/(?:\\w+\\.)?youtube\\.com\\/watch\\?.*v=([^&]+).*$','YouTube (JW Media Player)'),(81,0,3,0,0,0,'revver-mov','a:1:{s:6:\"@MURL@\";s:50:\"http://media.revver.com/broadcast/@CODE@/video.mov\";}','','Revver.com (using QuickTime)'),(82,0,28,9,0,0,'streetfire2','','http:\\/\\/videos\\.streetfire\\.net\\/video\\/([^\\/\\.]+)\\.htm$','StreetFire Videos'),(83,0,14,0,0,0,'vidiac','','http:\\/\\/www\\.vidiac\\.com\\/video\\/([\\dabcdef\\-]+)\\.htm$','Vidiac.com (previously FreeVideoBlog)'),(84,0,39,0,1,0,'flash','a:1:{s:6:\"@MURL@\";s:16:\"@VLOC@@CODE@.swf\";}','^(.+)\\.swf$','Plain local flash embedding (for flash animations)'),(85,0,39,0,0,0,'flashremote','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^(https{0,1}:\\/\\/.*\\.swf)$','Plain remote flash embedding (for flash animations)'),(86,0,17,0,0,0,'spike','','^http:\\/\\/www\\.spike\\.com\\/video\\/.*\\/(\\d+)$','Spike.com (previously iFilm.com)'),(87,0,40,0,0,0,'bcove','','^http:\\/\\/www\\.brightcove\\.tv\\/title\\.jsp\\?title=(\\d+).*$','Brightcove.tv'),(88,0,41,10,0,0,'myshows','','http:\\/\\/www\\.myshows\\.cn\\/myplayvideo\\.aspx\\?vid=(\\d+)','Myshows.cn (previouslyly seehaha.com)'),(89,0,34,11,0,0,'virb2','','http:\\/\\/www\\.virb\\.com\\/(.*)$','Virb.com'),(90,0,42,12,0,0,'blip','','^http:\\/\\/(?:www\\.)?blip\\.tv\\/file\\/(\\d+).*','Blip.tv'),(91,0,1,12,0,0,'blipjw','a:1:{s:6:\"@MURL@\";s:57:\"http://blip.tv/rss/flash/@CODE@?referrer=blip.tv&source=1\";}','^http:\\/\\/(?:www\\.)?blip\\.tv\\/file\\/(\\d+)\\?.*','Blip.tv using JW Media Player'),(92,0,3,13,0,0,'apple','a:1:{s:6:\"@MURL@\";s:6:\"@CODE@\";}','^http:\\/\\/www\\.apple\\.com\\/trailers\\/(.*)','Apple.com trailers'),(93,0,39,0,0,0,'movieweb','a:1:{s:6:\"@MURL@\";s:32:\"http://www.movieweb.com/v/@CODE@\";}','http:\\/\\/www\\.movieweb\\.com\\/video\\/(\\w+)$','MovieWeb');
/*!40000 ALTER TABLE `jos_avrbak_avr_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
INSERT INTO `jos_banner` VALUES (1,1,'banner','OSM 1','osm-1',0,43,0,'osmbanner1.png','http://www.opensourcematters.org','2004-07-07 15:31:29',1,0,'0000-00-00 00:00:00','','',13,'',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(2,1,'banner','OSM 2','osm-2',0,49,0,'osmbanner2.png','http://www.opensourcematters.org','2004-07-07 15:31:29',1,0,'0000-00-00 00:00:00','','',13,'',0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(3,1,'','Joomla!','joomla',0,20,0,'','http://www.joomla.org','2006-05-29 14:21:28',1,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.',14,'',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(4,1,'','JoomlaCode','joomlacode',0,20,0,'','http://joomlacode.org','2006-05-29 14:19:26',1,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.',14,'',0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(5,1,'','Joomla! Extensions','joomla-extensions',0,15,0,'','http://extensions.joomla.org','2006-05-29 14:23:21',1,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.',14,'',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(6,1,'','Joomla! Shop','joomla-shop',0,15,0,'','http://shop.joomla.org','2006-05-29 14:23:21',1,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.',14,'',0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(7,1,'','Joomla! Promo Shop','joomla-promo-shop',0,11,1,'shop-ad.jpg','http://shop.joomla.org','2007-09-19 17:26:24',1,0,'0000-00-00 00:00:00','','',33,'',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(8,1,'','Joomla! Promo Books','joomla-promo-books',0,10,0,'shop-ad-books.jpg','http://shop.joomla.org/amazoncom-bookstores.html','2007-09-19 17:28:01',1,0,'0000-00-00 00:00:00','','',33,'',0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
INSERT INTO `jos_bannerclient` VALUES (1,'Open Source Matters','Administrator','admin@opensourcematters.org','',0,'00:00:00',NULL);
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` VALUES (2,0,'Joomla! Specific Links','','joomla-specific-links','clock.jpg','com_weblinks','left','A selection of links that are all related to the Joomla! Project.',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(4,0,'Joomla!','','joomla','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(5,0,'Free and Open Source Software','','free-and-open-source-software','','com_newsfeeds','left','Read the latest news about free and open source software from some of its leading advocates.',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(6,0,'Related Projects','','related-projects','','com_newsfeeds','left','Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.',1,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(12,0,'Contacts','','contacts','','com_contact_details','left','<div class=\"contact-title\">Contact Us</div>\r\n<table id=\"contacts\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">\r\n<h3>Billing Address</h3>\r\nMustang Energy Services, Inc.<br />P.O. Box 430<br />Floresville, TX 78114</td>\r\n<td width=\"50%\">\r\n<h3>Physical Address</h3>\r\nMustang Energy Services, Inc.<br />2349 FM 539<br />Floresville, TX 78114</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Office:</strong> 830-947-0248<br /><strong> Fax:</strong> 830-947-3455<br /><strong> E-Mail:</strong> admin@mustangenergyservices.com</p>\r\n</td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>',1,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(13,0,'Joomla','','joomla','','com_banner','left','',1,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(14,0,'Text Ads','','text-ads','','com_banner','left','',1,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(15,0,'Features','','features','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,6,0,0,''),(17,0,'Benefits','','benefits','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(18,0,'Platforms','','platforms','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(19,0,'Other Resources','','other-resources','','com_weblinks','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(34,0,'Pages','','pages','','5','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(35,0,'Mustang Energy News','','mustang-energy-news','','6','left','Mustang Energy News',1,62,'2012-04-20 10:29:16',NULL,2,0,0,''),(33,0,'Joomla! Promo','','joomla-promo','','com_banner','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(36,0,'Products','','products','','5','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ckfields`
--

DROP TABLE IF EXISTS `jos_ckfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ckfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `name` text,
  `label` text,
  `typefield` text,
  `defaultvalue` text,
  `mandatory` tinyint(4) DEFAULT NULL,
  `test_validity` tinyint(4) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `custominfo` text,
  `customerror` text,
  `customvalidation` text,
  `readonly` tinyint(4) DEFAULT NULL,
  `labelCSSclass` text,
  `fieldCSSclass` text,
  `customtext` text,
  `customtextCSSclass` text,
  `frontdisplay` tinyint(4) DEFAULT NULL,
  `fillwith` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ckfields`
--

LOCK TABLES `jos_ckfields` WRITE;
/*!40000 ALTER TABLE `jos_ckfields` DISABLE KEYS */;
INSERT INTO `jos_ckfields` VALUES (1,1,'fullname','Full Name','text','t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===[--]d_format===0[--]d_daydate===',1,NULL,1,1,'','',NULL,0,'','','','',1,'inival'),(2,1,'email','Email','text','t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===[--]d_format===0[--]d_daydate===',1,NULL,1,2,'','',NULL,0,'','','','',1,'inival'),(3,1,'subject','Subject','text','t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===[--]d_format===0[--]d_daydate===',1,NULL,1,3,'','',NULL,0,'','','','',1,'inival'),(4,1,'message','Message','textarea','t_initvalueTA===[--]t_HTMLEditor===[--]t_columns===[--]t_rows===[--]t_wrap===default[--]t_maxchar===[--]t_minchar===',1,NULL,1,4,'','',NULL,0,'','','','',1,'inival'),(5,1,'Send','Send','button','t_typeBT===submit',0,NULL,1,5,'','',NULL,0,'','','','',1,'inival');
/*!40000 ALTER TABLE `jos_ckfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ckforms`
--

DROP TABLE IF EXISTS `jos_ckforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ckforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `title` text,
  `description` longtext,
  `emailfrom` text,
  `emailto` text,
  `emailcc` text,
  `emailbcc` text,
  `subject` text,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `saveresult` tinyint(4) DEFAULT NULL,
  `emailresult` tinyint(4) DEFAULT NULL,
  `textresult` longtext,
  `redirecturl` text,
  `redirectdata` tinyint(4) DEFAULT NULL,
  `captcha` tinyint(4) DEFAULT NULL,
  `captchacustominfo` text,
  `captchacustomerror` text,
  `customjs` text,
  `uploadpath` text,
  `maxfilesize` int(11) DEFAULT NULL,
  `poweredby` tinyint(4) DEFAULT NULL,
  `emailreceipt` tinyint(4) DEFAULT NULL,
  `emailreceipttext` longtext,
  `emailreceiptsubject` text,
  `emailreceiptincfield` tinyint(4) DEFAULT NULL,
  `emailreceiptincfile` tinyint(4) DEFAULT NULL,
  `emailresultincfile` tinyint(4) DEFAULT NULL,
  `formCSSclass` text,
  `displayip` tinyint(4) DEFAULT NULL,
  `displaydetail` tinyint(4) DEFAULT NULL,
  `fronttitle` text,
  `frontdescription` longtext,
  `autopublish` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ckforms`
--

LOCK TABLES `jos_ckforms` WRITE;
/*!40000 ALTER TABLE `jos_ckforms` DISABLE KEYS */;
INSERT INTO `jos_ckforms` VALUES (1,'contactform','contactform','','admin@mustangenergyservices.com','admin@mustangenergyservices.com','','','','2012-03-28 09:17:00',62,3,1,0,1,'','',0,0,'','',NULL,'/home/sas311/public_html/clients/dev5/mustang/tmp/',0,0,0,'','',1,1,0,'',0,0,'','',1);
/*!40000 ALTER TABLE `jos_ckforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ckprofilefields`
--

DROP TABLE IF EXISTS `jos_ckprofilefields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ckprofilefields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profileid` int(11) DEFAULT NULL,
  `fieldid` text,
  `customlabel` text,
  `defaultvalue` text,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ckprofilefields`
--

LOCK TABLES `jos_ckprofilefields` WRITE;
/*!40000 ALTER TABLE `jos_ckprofilefields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_ckprofilefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ckprofiles`
--

DROP TABLE IF EXISTS `jos_ckprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ckprofiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formid` int(11) DEFAULT NULL,
  `name` text,
  `title` text,
  `description` longtext,
  `published` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ckprofiles`
--

LOCK TABLES `jos_ckprofiles` WRITE;
/*!40000 ALTER TABLE `jos_ckprofiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_ckprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nallow_vcard=0\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=1\ncustom_reply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(36,'Zt Autolink','option=com_ztautolink',0,0,'option=com_ztautolink','Zt Autolink','com_ztautolink',0,'js/ThemeOffice/component.png',0,'',1),(41,'CK Forms','option=com_ckforms',0,0,'option=com_ckforms','CK Forms','com_ckforms',0,'../administrator/components/com_ckforms/images/logo-menu.png',0,'',1),(42,'Smart Former','option=com_smartformer',0,0,'option=com_smartformer','Smart Former','com_smartformer',0,'js/ThemeOffice/component.png',0,'',1),(67,'AVR_TITLE_MANAGE_PLAYLISTS','',0,63,'option=com_avreloaded&view=playlists','AVR_TITLE_MANAGE_PLAYLISTS','com_avreloaded',3,'components/com_avreloaded/assets/avreloaded-16x16.png',0,'',1),(66,'AVR_TITLE_MANAGE_TAGS','',0,63,'option=com_avreloaded&view=tags','AVR_TITLE_MANAGE_TAGS','com_avreloaded',2,'components/com_avreloaded/assets/avreloaded-16x16.png',0,'',1),(63,'AvReloaded','',0,0,'','AvReloaded','com_avreloaded',0,'',0,'',1),(64,'AVR_TITLE_MANAGE_PLAYERS','',0,63,'option=com_avreloaded&view=players','AVR_TITLE_MANAGE_PLAYERS','com_avreloaded',0,'components/com_avreloaded/assets/avreloaded-16x16.png',0,'',1),(65,'AVR_TITLE_MANAGE_RIPPERS','',0,63,'option=com_avreloaded&view=rippers','AVR_TITLE_MANAGE_RIPPERS','com_avreloaded',1,'components/com_avreloaded/assets/avreloaded-16x16.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
INSERT INTO `jos_contact_details` VALUES (3,'Ross Coffey','ross-coffey','Sales & Field Consultant','','','','','','','','','',NULL,'rcoffey@mustangenergyservices.com',0,1,0,'0000-00-00 00:00:00',3,'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=0\nshow_mobile=1\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',0,12,0,'830-391-6967',''),(2,'Todd Creel','todd-creel','Operations Manager','','','','','','817-291-9486','','','',NULL,'toddcreel@mustangenergyservices.com',0,1,0,'0000-00-00 00:00:00',2,'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=0\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',0,12,0,'817-291-9486','');
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` VALUES (46,'Welcome to Mustang Energy','welcome-to-mustang-energy','','<p><span class=\"dropcap\">M</span>ustang Energy Services, Inc is an oil and gas service company specializing in the installation of pit liners. Headquartered in Floresville, TX, the company prides itself on quality; always striving  to provide the best service in the industry. It is our goal to create and maintain first-rate relationships between company and customer. Above all else, Mustang Energy is a safety oriented company. Our daily operations revolve around safe practices and preventative measures.</p>\r\n<p>Please contact the office with any questions.  We would love to talk with you.</p>','',1,5,0,34,'2012-03-02 11:10:22',62,'','2012-04-10 15:58:05',63,0,'0000-00-00 00:00:00','2012-03-02 11:10:22','0000-00-00 00:00:00','','','show_title=\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=',13,0,9,'','',0,147,'robots=\nauthor='),(47,'Products','products','','<div id=\"lipsum\">\r\n<h1>Products</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean  pellentesque elit vitae urna pulvinar molestie. Phasellus quis sodales  est. Cras sit amet eros ac sapien mollis semper in quis orci. Ut nec  nibh ut felis posuere luctus. Cum sociis natoque penatibus et magnis dis  parturient montes, nascetur ridiculus mus. Quisque pellentesque  tristique mauris, quis consequat augue venenatis a. Pellentesque non leo  diam, id egestas mauris. Nunc sodales velit ac urna sodales venenatis  eget sed velit. In hac habitasse platea dictumst. Mauris ut dui vel quam  interdum lobortis quis sed metus. Class aptent taciti sociosqu ad  litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu  ligula vel magna aliquam elementum ut ac dui. Sed semper libero et justo  ultrices malesuada. Phasellus risus magna, ultricies et condimentum at,  sollicitudin sit amet est.</p>\r\n<p>Fusce ac metus in quam fringilla malesuada. Sed ornare posuere  malesuada. Quisque nulla magna, gravida in dictum sit amet, aliquam ac  arcu. Mauris ultricies, lorem quis posuere cursus, odio metus rutrum  quam, cursus cursus lacus nulla eu massa. Ut tempus magna a diam  ultricies at scelerisque massa placerat. Phasellus cursus felis vitae  sapien sollicitudin laoreet. Integer vel lorem et lacus pellentesque  pharetra. Donec tristique pellentesque risus id feugiat. Aenean et lorem  tortor.</p>\r\n<p>Aenean malesuada egestas dictum. Mauris congue egestas ultrices.  Praesent tristique, dolor eu tristique tempus, dui purus tincidunt  nulla, eget hendrerit mauris nibh non nulla. Etiam turpis massa, dapibus  in varius fermentum, egestas at orci. Phasellus condimentum  sollicitudin iaculis. Nullam sit amet purus erat. Nunc vitae sagittis  massa.</p>\r\n</div>','',1,5,0,34,'2012-03-02 11:25:45',62,'','2012-03-02 11:44:40',62,0,'0000-00-00 00:00:00','2012-03-02 11:25:45','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,8,'','',0,111,'robots=\nauthor='),(48,'The Company','the-company','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non lorem  orci. Cras sit amet elit a nulla convallis mollis sed eu odio. Vivamus  quis libero augue, in elementum elit. Phasellus id facilisis urna.  Vivamus elementum eros ut dolor cursus at tempor augue mollis. Integer  congue, augue vitae tristique feugiat, urna odio pharetra ligula, sit  amet facilisis neque dolor sit amet nibh. Proin consectetur leo a sem  auctor consequat et ut sem. Mauris et felis quam. In at massa libero, eu  condimentum arcu.</p>\r\n<p>Aliquam dapibus gravida felis nec interdum. Nulla lorem lorem, fermentum  eget aliquet eu, bibendum quis sem. In sollicitudin tortor vitae quam  tincidunt vitae vehicula erat rutrum. Praesent id libero eu magna  hendrerit tincidunt sed nec magna. Sed nibh tellus, ultricies a ornare  ut, convallis quis ligula. Praesent rutrum vehicula risus, vel hendrerit  turpis volutpat tincidunt. Suspendisse potenti.</p>\r\n<p>Nulla orci quam, suscipit sed posuere vitae, interdum eget tellus.  Curabitur erat est, bibendum ut semper eget, sollicitudin sed lacus.  Suspendisse eu mauris non neque tincidunt lacinia. Nullam tempus  imperdiet sapien ut placerat. Phasellus elit tellus, lacinia et aliquet  eu, blandit eu quam. Curabitur malesuada mauris eu mi vestibulum nec  tempus risus ullamcorper. Suspendisse eget ante ante, vitae mollis  ligula. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Nulla velit ante, pharetra id  facilisis ut, mollis eu leo. Mauris sed tortor non justo posuere  sagittis. Nullam luctus ligula et massa venenatis venenatis.</p>','',1,5,0,34,'2012-03-02 11:28:10',62,'','2012-04-10 16:28:30',63,0,'0000-00-00 00:00:00','2012-03-02 11:28:10','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,7,'','',0,47,'robots=\nauthor='),(49,'Other Lining Services','other-lining-services','','<p><img class=\"imgLeft\" src=\"images/stories/0399-otherlining.jpg\" border=\"0\" alt=\"Other Lining\" />Along with frac pits and reserve pits, Mustang can also help you in other areas of the lining and containment industry - flow back pits, under the rig lining, secondary containment systems, pre-fab liners etc. We can also perform repair jobs on previously lined pits or any other type of repair needed. A repair can be much more cost effective than re-lining an entire location.</p>\r\n<p>For under the rig liners, flow back pits and secondary containment systems a crew will deliver the material, and then assemble and install or place the liner on location. Pre-fab liners, on the other hand, are normally manufactured in shop and delivered to location where they can be dropped off and/or installed. They can also be picked up by the customer directly from the yard. If size limitations prohibit the liner from being made in house, they will be made on location and installed where needed.</p>\r\n<p>These are examples of how these types of jobs are typically done; however, we will work with the client to make sure the needs are met - we know that every request is different and strive for flexibility to ensure the client is satisfied with the end result.</p>','',1,5,0,34,'2012-03-02 11:28:55',62,'','2012-04-26 01:17:57',63,0,'0000-00-00 00:00:00','2012-03-02 11:28:55','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',28,0,6,'','',0,1468,'robots=\nauthor='),(50,'Faqs','faqs','','<h1>FAQs</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non lorem  orci. Cras sit amet elit a nulla convallis mollis sed eu odio. Vivamus  quis libero augue, in elementum elit. Phasellus id facilisis urna.  Vivamus elementum eros ut dolor cursus at tempor augue mollis. Integer  congue, augue vitae tristique feugiat, urna odio pharetra ligula, sit  amet facilisis neque dolor sit amet nibh. Proin consectetur leo a sem  auctor consequat et ut sem. Mauris et felis quam. In at massa libero, eu  condimentum arcu.</p>\r\n<p>Aliquam dapibus gravida felis nec interdum. Nulla lorem lorem, fermentum  eget aliquet eu, bibendum quis sem. In sollicitudin tortor vitae quam  tincidunt vitae vehicula erat rutrum. Praesent id libero eu magna  hendrerit tincidunt sed nec magna. Sed nibh tellus, ultricies a ornare  ut, convallis quis ligula. Praesent rutrum vehicula risus, vel hendrerit  turpis volutpat tincidunt. Suspendisse potenti.</p>\r\n<p>Duis rhoncus, ligula sit amet dignissim ornare, massa tellus tempus est,  id dignissim tellus urna a justo. Vestibulum sollicitudin, quam a  accumsan sagittis, urna ipsum faucibus nunc, eget convallis orci ante et  nunc. Suspendisse potenti. Sed tincidunt ullamcorper mi, quis iaculis  nunc rhoncus non. Sed at augue vulputate lorem eleifend dignissim.  Praesent in sem sit amet lectus interdum tristique et vel enim. Proin  sed enim neque.</p>\r\n<p>Quisque auctor, quam eu mattis viverra, ipsum est consequat orci, ut  eleifend diam felis a urna. Pellentesque dignissim fermentum blandit.  Nam quis enim nisi, a feugiat nunc. Ut hendrerit convallis luctus.  Phasellus eget augue dolor. Quisque sodales iaculis ornare. Praesent in  nulla a nisi cursus fringilla.</p>','',1,5,0,34,'2012-03-02 11:29:28',62,'','2012-03-02 11:46:19',62,0,'0000-00-00 00:00:00','2012-03-02 11:29:28','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,5,'','',0,18,'robots=\nauthor='),(51,'Photo Gallery','photo-gallery','','<h1>Photo Gallery</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra  rhoncus nisi, ac fermentum magna vestibulum id. Sed eleifend risus eu  nisi ultrices non pellentesque libero mattis. Etiam elementum augue non  neque porta dapibus. Quisque suscipit pharetra nibh ut aliquet. In  tempor cursus orci. Mauris diam eros, vulputate quis sagittis eget,  varius vel lorem. Ut commodo euismod mi, sed interdum tellus sodales  eget. Praesent et augue a massa iaculis aliquam sed quis sapien. In  ultrices mollis suscipit.</p>\r\n<p>In lacinia consequat sapien, quis tincidunt enim posuere a. Nunc  volutpat leo suscipit libero varius suscipit. Aliquam tempus ornare  facilisis. Cras pharetra turpis eu massa feugiat pharetra. Integer  ultrices erat vel tortor feugiat tempor. Cras vitae justo ipsum. Duis  rhoncus leo tempor urna dapibus suscipit. Sed ullamcorper accumsan diam,  rutrum faucibus orci fringilla eu. Nullam sem ligula, commodo in  tincidunt posuere, gravida a nunc. Aliquam erat volutpat.</p>\r\n<p>Cras blandit lobortis magna at iaculis. Praesent accumsan tincidunt orci  eget varius. Proin sed dui a nibh rhoncus adipiscing vitae et enim.  Integer condimentum sagittis lectus, vel varius risus scelerisque  semper. In dolor lacus, ullamcorper eget ultricies tempus, suscipit sit  amet diam. Cras bibendum sollicitudin consectetur. Vivamus nulla ante,  posuere aliquam rutrum ac, tristique ut enim. Aliquam imperdiet, metus a  volutpat faucibus, eros sapien sollicitudin massa, at rutrum ante purus  a metus. Nulla orci est, pharetra a tempus et, laoreet sed dolor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec ac tortor dolor, non hendrerit eros.  Suspendisse venenatis hendrerit tincidunt. Nam nisl velit, varius eu  tristique ac, tempus et lectus. Sed aliquet viverra rhoncus.</p>','',1,5,0,34,'2012-03-02 11:29:58',62,'','2012-03-02 11:46:39',62,62,'2012-04-17 05:19:00','2012-03-02 11:29:58','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,4,'','',0,21,'robots=\nauthor='),(52,'Contact','contact','','<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"300\">Billing Address:<br /> Mustang Energy Services, Inc<br /> P.O. Box 430<br /> Floresville, TX 78114<br /><br /></td>\r\n<td>Physical Address:<br /> Mustang Energy Services, Inc<br /> 2349 FM 539<br /> Floresville, TX 78114<br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"300\"><strong>Office:</strong> 830-947-0248<br /> <strong>Fax:</strong> 830-947-3455<br /> <strong>E-Mail:</strong> admin@mustangenergyservices.com <br /><br /></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Sales Manager:<br /> Todd Creel <br /> <strong>Cell:</strong> 817-291-9486<br /> <strong>Email:</strong> <a>toddcreel@mustangenergyservices.com</a><br /><br /></td>\r\n<td width=\"300\">Field Consultant:<br /> Ross Coffey<br /> <strong>Cell:</strong> 830-391-6967<br /> <strong>E-mail:</strong> rcoffey@mustangenergyservices.com <br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,5,0,34,'2012-03-02 11:30:28',62,'','2012-04-25 11:45:02',62,0,'0000-00-00 00:00:00','2012-03-02 11:30:28','0000-00-00 00:00:00','','','show_title=0\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',25,0,3,'','',0,78,'robots=\nauthor='),(53,'testing msg','lorem-ipsum-dolor-sit-amet-consec-tetuer-adipiscing-elit','','  Normal 0     false false false  EN-US X-NONE X-NONE                                                                                                                                                                         \r\n<p class=\"MsoNormal\"><em><span style=\"font-size: 9pt; line-height: 115%;\">Please check back periodically for other news- including employment opportunities, expansion, and additional company updates.</span></em></p>','',1,6,0,35,'2012-03-05 13:30:49',62,'','2012-05-01 16:14:49',64,0,'0000-00-00 00:00:00','2012-03-05 13:30:49','0000-00-00 00:00:00','','','show_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,2,'','',0,8,'robots=\nauthor='),(54,'***We have expanded!***','facilisis-at-vero-eros-et-accumsan-et-iusto-odio','','***We have expanded!***<br />We are now offering on location Cool-Down Trailers to aid in the hot summer months. Check out the trailer tab for more information.  <br /><br /><br /><em>Please check back periodically for other news- including employment opportunities, expansion, and additional company updates</em>','',1,6,0,35,'2012-03-05 13:32:21',62,'','2012-04-17 05:35:26',62,0,'0000-00-00 00:00:00','2012-03-05 13:32:21','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,1,'','',0,9,'robots=\nauthor='),(58,'What We Do','what-we-do','','<p><span class=\"dropcap\">O</span>ur lining services include frac pits, reserve pits, under the rig lining and flowback pits. Repair jobs, secondary containment systems and pre-fab liners are additional services offered. Mustang Energy understands your time and money are important and therefore works to be as efficient as possible without sacrificing quality or safety. We offer our clients reliability, travel flexibility, innovative thinking and seven day a week readiness. Our sales team and trained installation crews will take care of you in your next lining project.</p>','',1,5,0,34,'2012-04-10 10:57:12',63,'','2012-04-25 10:47:20',63,0,'0000-00-00 00:00:00','2012-04-10 10:57:12','0000-00-00 00:00:00','','','show_title=1\nlink_titles=0\nshow_intro=\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=',15,0,1,'','',0,97,'robots=\nauthor='),(56,'Frac Pits/Reserve Pits','frac-pits-reserve-pits','','<p><img class=\"imgLeft\" src=\"images/stories/FracTank1-big.jpg\" border=\"0\" alt=\"Frac pit\" /> Our pit lining services are customizable depending on the client needs. The thickness of material ranges from 6 mil to 100 mil. For the rocky pits and hard to deal with locations we can lay a geo-textile material under the liner to further protect the product and help with the possibility of torn liners and leaks. Colors and lengths of liners also fluctuate and Mustang is set up to accommodate the installation of several different types.</p>\r\nRub sheets can also be put in the pit; typically a thick 40 mil textured HD material, rub sheets are placed in the sump to help prevent tearing and breaks in the liner. They also provide safer walking services within the tank itself. We can also place bags of top soil, sand bags, or concrete in the pit after it is lined to further stabilize the liner. Depth gauge numbers or a depth gauge pole can be inserted to help track water level.\r\n<p>Mustang is constantly thinking of ways to further protect your containment systems from leaks and problems, but should an issue arise, we will do everything we can to resolve it with as little inconvenience to you. We have a formulated installation process that maximizes effectiveness without sacrificing quality or safety - we can do jobs big or small and will do everything we can to provide the best final product possible.</p>\r\n<!-- {vsig}FracTanks{/vsig} -->','',1,5,0,36,'2012-03-22 11:34:37',62,'','2012-04-26 01:13:33',63,0,'0000-00-00 00:00:00','2012-03-22 11:34:37','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',28,0,1,'','',0,2194,'robots=\nauthor='),(55,'Cool Down Trailers','cool-down-trailers','','<p><!-- <img class=\"imgLeft\" src=\"images/stories/cooltrailersafetyshower.jpg\" mce_src=\"images/stories/cooltrailersafetyshower.jpg\" border=\"0\" /> -->Mustang Energy Services, Inc is now offering safety trailers as well as on location cool down trailers.</p>\r\n<h4>What they are and what they do:</h4>\r\n<ul>\r\n<li>Mobile cool down area and designated safety location                                                                          \r\n<ul>\r\n<li>Can decrease outside temperature by up to 30 degrees</li>\r\n</ul>\r\n</li>\r\n<li>An additional measure to help maintain the safety of our industry’s personnel                                                                          \r\n<ul>\r\n<li>OSHA compliance</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h4>Specifics of the <em>safety trailers</em>:</h4>\r\n<ul>\r\n<li>16 Foot Trailer</li>\r\n<li>48” Evaporative Cooling System and Fan with Water Reservoir</li>\r\n<li>Enclosed 6500 Diesel Generator</li>\r\n<li>Step with Handrail</li>\r\n<li>Bench Seating</li>\r\n<li>Safety Shower and Eyewash Station</li>\r\n<li>Cold & Warm Water Dispenser</li>\r\n<li>First Aid Kit</li>\r\n<p class=\"stickynote\"><br /><strong>Our trailers also offer… HEAT!</strong></p>\r\n<li>Two 1500 Watt Heaters with Enclosed Switches</li>\r\n<li>Clear Enclosure for Front, Sides & Rear with Zip Up Entrance</li>\r\n</ul>\r\n<h4>Specifics of the <em>cool down trailers</em>:</h4>\r\n<ul>\r\n<li>16 Foot Trailer</li>\r\n<li>Evaporative Cooling System and Fan with Water Reservoir</li>\r\n<li>Bench Seating</li>\r\n<li>Step with Handrail</li>\r\n<li>First Aid Kit</li>\r\n</ul>\r\n<div class=\"legend\">\r\n<div class=\"legend-title\">How it works</div>\r\n<li><em>Rental Rates</em></li>\r\n<ul>\r\n<li>Daily</li>\r\n<li>Weekly</li>\r\n<li>Monthly</li>\r\n</ul>\r\n<li><em>Servicing</em></li>\r\n<ul>\r\n<li>Customer can maintain and service trailer as needed-water, diesel, etc</li>\r\n<li>Mustang Energy can service trailer on location at additional cost</li>\r\n</ul>\r\n</div>\r\n<p>Please <a href=\"contact-us\" target=\"_self\" title=\"Contact a Sales Rep\">call one of our sales representatives</a> for rental prices and more information.</p>','',1,5,0,36,'2012-03-22 11:30:52',62,'','2012-05-01 15:48:47',64,0,'0000-00-00 00:00:00','2012-03-22 11:30:52','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',50,0,2,'cool down trailer, cool down trailers','Mustang Energy Services, Inc is now offering safety trailers as well as on location cool down trailers.',0,2678,'robots=index,follow\nauthor=Mustang Energy Services'),(57,'Safety','safety','','<div class=\"pullquote\"><a href=\"http://www.nsc.org/\" target=\"_blank\"><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC1.jpg\" border=\"0\" alt=\"National Safety Council\" width=\"74\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC2.jpg\" border=\"0\" width=\"86\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC3.jpg\" border=\"0\" width=\"92\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC4.jpg\" border=\"0\" width=\"95\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC5.jpg\" border=\"0\" width=\"97\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC6.jpg\" border=\"0\" width=\"97\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC7.jpg\" border=\"0\" width=\"95\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC8.jpg\" border=\"0\" width=\"92\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC9.jpg\" border=\"0\" width=\"86\" height=\"10\" /><img class=\"curve1\" src=\"images/stories/NationalSafetyWrap/NSC10.jpg\" border=\"0\" width=\"74\" height=\"10\" /></a>Mustang Energy Services is also a proud member of <a href=\"http://www.nsc.org\" target=\"_blank\" title=\"National Safety Council\">The National Safety Council</a> who helps our management stay up to date on safety news.</div>\r\n<p>Mustang Energy Services, Inc holds operational safety at a high standard. Our objective is to prevent incidents by implementing preventive practices in our daily activities and on all job sites. We also stay safety aware by having the company and employees involved in various organizations - to both become well-informed and remain up to date with the industry and its requirements. Mustang takes these steps to be accident free:</p>\r\n<ul>\r\n<li>Mustang Energy Services, Inc has a safety consultant and holds monthly safety meetings. In these meetings our consultant covers a variety of topics to ensure that our employees are staying up to date and continue to be educated.</li>\r\n<li>Along with monthly meetings, a “tailgate” safety meeting is held on location before every job where a JSA is also completed.</li>\r\n<li>At time of hire, employees are given an in-depth safety manual and advised to reference the manual at any time of question.</li>\r\n<li>All Mustang Energy Services, Inc employees attend Safeland Training.</li>\r\n<li>Employees are CPR/First Aid/ H2S Certified.</li>\r\n<li>Mustang Energy Services, Inc is a proud member of <a href=\"http://www.DISA.com\" target=\"_blank\" title=\"DISA\">DISA</a>. Use of alcohol, drugs or any other illegal substance is NOT tolerated. Each employee is tested prior to hire through <a href=\"http://www.DISA.com\" target=\"_blank\" title=\"DISA\">DISA</a> who also maintains our random drug testing program. </li>\r\n</ul>','',1,5,0,34,'2012-03-29 12:54:12',62,'','2012-04-18 01:58:53',63,0,'0000-00-00 00:00:00','2012-03-29 12:54:12','0000-00-00 00:00:00','','','show_title=1\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=',11,0,2,'','',0,1351,'robots=\nauthor=');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` VALUES (46,2),(58,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` VALUES (10,'users','62',0,'Administrator',0),(11,'users','63',0,'Administrator',0),(12,'users','64',0,'Whitney Creel',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (24,'',12),(25,'',10),(25,'',11);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'mainmenu','Home','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,9,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=2\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=order\norderby_sec=date\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Joomla! License','joomla-license','index.php?option=com_content&view=article&id=5','component',-2,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(41,'mainmenu','FAQ','faq','index.php?option=com_content&view=section&id=3','component',-2,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1',0,0,0),(64,'topmenu','Faqs','faqs','index.php?option=com_content&view=article&id=50','component',0,0,20,0,14,62,'2012-03-02 11:45:57',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(18,'topmenu','News','news','index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1','component',-2,0,11,0,4,0,'0000-00-00 00:00:00',0,0,0,3,'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',0,0,0),(20,'usermenu','Your Details','your-details','index.php?option=com_user&view=user&task=edit','component',1,0,14,0,1,0,'0000-00-00 00:00:00',0,0,1,3,'',0,0,0),(24,'usermenu','Logout','logout','index.php?option=com_user&view=login','component',1,0,14,0,4,0,'0000-00-00 00:00:00',0,0,1,3,'',0,0,0),(63,'topmenu','Other Lining Services','other-lining-services','index.php?option=com_content&view=article&id=49','component',1,0,20,0,5,62,'2012-04-20 10:26:03',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(27,'mainmenu','Joomla! Overview','joomla-overview','index.php?option=com_content&view=article&id=19','component',-2,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(28,'topmenu','About Joomla!','about-joomla','index.php?option=com_content&view=article&id=25','component',-2,0,20,0,10,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(29,'topmenu','Features','features','index.php?option=com_content&view=article&id=22','component',-2,0,20,0,12,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(30,'topmenu','The Community','the-community','index.php?option=com_content&view=article&id=27','component',-2,0,20,0,13,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(34,'mainmenu','What\'s New in 1.5?','what-is-new-in-1-5','index.php?option=com_content&view=article&id=22','component',-2,0,20,1,4,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(62,'topmenu','The Company','the-company','index.php?option=com_content&view=article&id=48','component',0,0,20,0,11,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(37,'mainmenu','More about Joomla!','more-about-joomla','index.php?option=com_content&view=section&id=4','component',-2,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1',0,0,0),(53,'Bottom-Menu','Products','products','index.php?option=com_content&view=article&id=47','component',0,0,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Prodyucts\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(54,'Bottom-Menu','The Company','the-company','index.php?option=com_content&view=article&id=48','component',0,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=The Company\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(55,'Bottom-Menu','Services','services','index.php?option=com_content&view=article&id=49','component',0,0,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(56,'Bottom-Menu','Faqs','faqs','index.php?option=com_content&view=article&id=50','component',0,0,20,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(57,'Bottom-Menu','Photo Gallery','photo-gallery','index.php?option=com_content&view=article&id=51','component',0,0,20,0,10,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(58,'Bottom-Menu','Contact Us','contact-us','index.php?option=com_contact&view=category&catid=12','component',1,0,7,0,6,62,'2012-04-25 11:44:21',0,0,0,0,'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(59,'Bottom-Menu','Home','home','index.php','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(60,'topmenu','Home','home','index.php','url',1,0,0,0,1,62,'2012-04-20 10:39:25',0,0,0,0,'menu_image=-1\n\n',0,0,0),(61,'topmenu','Products','products','index.php?option=com_content&view=category&layout=blog&id=36','component',0,0,20,0,15,62,'2012-04-20 10:26:09',0,0,0,0,'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=2\nnum_columns=2\nnum_links=4\norderby_pri=order\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=0\nlink_titles=\nshow_intro=1\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=1\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(48,'mainmenu','Web Links','web-links','index.php?option=com_weblinks&view=categories','component',-2,0,4,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',0,0,0),(49,'mainmenu','News Feeds','news-feeds','index.php?option=com_newsfeeds&view=categories','component',-2,0,11,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',0,0,0),(50,'mainmenu','The News','the-news','index.php?option=com_content&view=category&layout=blog&id=1','component',-2,0,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(51,'usermenu','Submit an Article','submit-an-article','index.php?option=com_content&view=article&layout=form','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,2,0,'',0,0,0),(52,'usermenu','Submit a Web Link','submit-a-web-link','index.php?option=com_weblinks&view=weblink&layout=form','component',1,0,4,0,3,0,'0000-00-00 00:00:00',0,0,2,0,'',0,0,0),(65,'topmenu','Portfolio','portfolio','index.php?option=com_content&view=article&id=51','component',0,0,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(66,'topmenu','Contact Us','contact-us','index.php?option=com_contact&view=category&catid=12','component',1,0,7,0,9,62,'2012-04-25 11:45:07',0,0,0,0,'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=0\nshow_position=\nshow_email=\nshow_telephone=0\nshow_mobile=\nshow_fax=0\nallow_vcard=0\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=Contact Us\nshow_page_title=0\npageclass_sfx=contact_page\nmenu_image=-1\nsecure=0\n\n',0,0,0),(67,'Bottom-Menu','Cool Down Trailers','cool-down-trailers','index.php?option=com_content&view=article&id=55','component',-2,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(68,'Bottom-Menu','Frac Tanks/Reserve Pits','frac-tanksreserve-pits','index.php?option=com_content&view=article&id=56','component',-2,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(69,'Bottom-Menu','Safety','safety','index.php?option=com_content&view=article&id=57','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(70,'topmenu','Safety','safety','index.php?option=com_content&view=article&id=57','component',1,0,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(71,'topmenu','Frac Tanks/Reserve Pits','frac-tanksreserve-pits','index.php?option=com_content&view=article&id=56','component',-2,0,20,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(72,'topmenu','Cool Down Trailers','cool-down-trailers','index.php?option=com_content&view=article&id=55','component',1,0,20,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(73,'topmenu','Frac Pits/Reserve Pits','frac-pits-reserve-pits','index.php?option=com_content&view=article&id=56','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'usermenu','User Menu','A Menu for logged in Users'),(3,'topmenu','Top Menu','Top level navigation'),(7,'Bottom-Menu','Bottom Menu','Bottom Menu');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,'Main Menu','',2,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmoduleclass_sfx=_menu\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'Polls','',3,'right',0,'0000-00-00 00:00:00',0,'mod_poll',0,0,1,'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(17,'User Menu','',3,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,1,1,'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1',1,0,''),(18,'Login Form','',5,'left',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'greeting=1\nname=0',1,0,''),(19,'Latest News','',4,'user1',0,'0000-00-00 00:00:00',0,'mod_latestnews',0,0,1,'cache=1',1,0,''),(20,'Statistics','',4,'left',0,'0000-00-00 00:00:00',0,'mod_stats',0,0,1,'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=',0,0,''),(21,'Who\'s Online','',4,'right',62,'2012-03-22 08:13:18',0,'mod_whosonline',0,0,1,'online=1\nusers=1\nmoduleclass_sfx=',0,0,''),(22,'Popular','',6,'user2',0,'0000-00-00 00:00:00',0,'mod_mostread',0,0,1,'cache=1',0,0,''),(23,'Archive','',6,'left',0,'0000-00-00 00:00:00',0,'mod_archive',0,0,1,'cache=1',1,0,''),(24,'Sections','',7,'left',0,'0000-00-00 00:00:00',0,'mod_sections',0,0,1,'cache=1',1,0,''),(25,'Newsflash','',1,'top',0,'0000-00-00 00:00:00',1,'mod_newsflash',0,0,1,'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=',0,0,''),(26,'Related Items','',8,'left',0,'0000-00-00 00:00:00',0,'mod_related_items',0,0,1,'',0,0,''),(27,'Search','',1,'user4',0,'0000-00-00 00:00:00',0,'mod_search',0,0,0,'cache=1',0,0,''),(28,'Random Image','',6,'right',62,'2012-05-01 21:54:07',0,'mod_random_image',0,0,1,'',0,0,''),(30,'Banners','',1,'footer',62,'2012-05-01 21:53:27',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n',1,0,''),(56,'Top Menu','',0,'topMenu',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(32,'Wrapper','',9,'left',62,'2012-03-21 12:13:33',0,'mod_wrapper',0,0,1,'',0,0,''),(33,'Footer','',2,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,0,'cache=1\n\n',1,0,''),(34,'Feed Display','',10,'left',0,'0000-00-00 00:00:00',0,'mod_feed',0,0,1,'',1,0,''),(35,'Breadcrumbs','',1,'breadcrumb',62,'2012-03-22 11:19:43',1,'mod_breadcrumbs',0,0,1,'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n',1,0,''),(36,'Syndication','',3,'syndicate',0,'0000-00-00 00:00:00',1,'mod_syndicate',0,0,0,'',1,0,''),(38,'Advertisement','',5,'right',62,'2012-03-22 08:13:31',0,'mod_banners',0,0,1,'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href=\"http://www.joomla.org\">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n',0,0,''),(58,'Vinaora Nivo Slider','',0,'user3',0,'0000-00-00 00:00:00',1,'mod_vt_nivo_slider',0,0,0,'item_dir=slider\nitem_title=<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\\n<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\\n<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\\n<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\\n<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\\n<label class=\"head\">READY AND RELIABLE</label><br/><label class=\"text\">Building Reputation Through Remarkable Services</label>\nitem_url=\nitem_target=_self\ntheme=default\neffect=slideInRight\nslices=15\nboxCols=8\nboxRows=4\nanimSpeed=500\npauseTime=3000\nstartSlide=0\ndirectionNav=0\ndirectionNavHide=1\ncontrolNav=1\nkeyboardNav=1\npauseOnHover=1\nmanualAdvance=0\ncaptionOpacity=100\nprevText=Prev\nnextText=Next\njquery_source=local\njquery_version=1.7.1\nlayout=default\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n',0,0,''),(53,'Bottom Menu','',1,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=Bottom-Menu',0,0,''),(41,'Welcome to Joomla!','<div style=\"padding: 5px\">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href=\"http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews\" target=\"_blank\">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href=\"http://www.joomla.org/download.html\" target=\"_blank\">latest Joomla! release;</a> and (3) a <a href=\"http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup\" target=\"_blank\" title=\"good Web host\">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href=\"http://docs.joomla.org/Category:Security_Checklist\" target=\"_blank\" title=\"Joomla! Security Checklist\">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href=\"http://developer.joomla.org/security/contact-the-team.html\" target=\"_blank\" title=\"Joomla! Security Task Force\">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   \"<a href=\"http://docs.joomla.org/beginners\" target=\"_blank\">Absolute Beginner\'s   Guide to Joomla!.</a>\" There, you will find a Quick Start to Joomla!   <a href=\"http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf\" target=\"_blank\">guide</a>   and <a href=\"http://help.joomla.org/ghop/feb2008/task167/index.html\" target=\"_blank\">video</a>,   amongst many other tutorials. The   <a href=\"http://community.joomla.org/magazine/view-all-issues.html\" target=\"_blank\">Joomla!   Community Magazine</a> also has   <a href=\"http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html\" target=\"_blank\">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href=\"http://docs.joomla.org/Category:FAQ\" target=\"_blank\">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href=\"http://forum.joomla.org/\" target=\"_blank\">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name=\"twjs\" title=\"twjs\"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href=\"http://www.joomla.org/about-joomla/contribute-to-joomla.html\" target=\"_blank\">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>',0,'cpanel',0,'0000-00-00 00:00:00',0,'mod_custom',0,2,1,'moduleclass_sfx=\n\n',1,1,''),(42,'Joomla! Security Newsfeed','',6,'cpanel',0,'0000-00-00 00:00:00',0,'mod_feed',0,0,1,'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n',0,1,''),(43,'Address','<strong>Address:</strong> P.O. Box 430 <br />Floresville, TX 78114<br /><strong>Phone:</strong> 817-291-9486 <br />830-947-0248<br /><strong>Fax:</strong> 830-947-3455',0,'user1',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(44,'Motto','<span id=\"t-heading\"> Ready &amp; Reliable </span> <br /> <span id=\"t-middle-st\"> Building Reputation through Remarkable Service </span>',0,'user2',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(46,'Slider','<div><img src=\"images/stories/1.jpg\" border=\"0\" /></div>\r\n<div><img src=\"images/stories/2.jpg\" border=\"0\" /></div>\r\n<div><img src=\"images/stories/3.jpg\" border=\"0\" /></div>\r\n<div><img src=\"images/stories/4.jpg\" border=\"0\" /></div>\r\n<div><img src=\"images/stories/5.jpg\" border=\"0\" /></div>\r\n<div><img src=\"images/stories/6.jpg\" border=\"0\" /></div>\r\n<div><img src=\"templates/mustangg/images/sl-image.png\" border=\"0\" /></div>',2,'user3',62,'2012-05-02 11:28:20',0,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(47,'Latest News','<div id=\"top-news\"></div>\r\n<div id=\"news-title\">Mustang Energy News</div>\r\n<div id=\"news-holder\">\r\n<div id=\"news-holder-bg\">\r\n<div id=\"news-heading\"><a href=\"#\">Lorem ipsum dolor sit amet consec tetuer adipiscing elit</a></div>\r\n<div class=\"news-text\">Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt.</div>\r\n<div id=\"news-heading\"><a href=\"#\">Facilisis at vero eros et accumsan  et iusto odio</a></div>\r\n<div class=\"news-text\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</div>\r\n</div>\r\n</div>\r\n<div id=\"bottom-news\"></div>',7,'right',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(48,'Copyrights','<div>Copyright ©2012. All rights reserved.<br /> <a class=\"footerc\" href=\"http://www.focusedidea.com/\" target=\"blank\" title=\"Focused Idea - Changing the way the world sees your business.\">San Antonio Website Design</a> | <a class=\"footerc\" href=\"http://www.focusedidea.com/\" target=\"blank\" title=\"Focused Idea - Changing the way the world sees your business.\">Focused Idea, LLC</a></div>',0,'copyrights',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(55,'Bottom Menu','',1,'user7',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=Bottom-Menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(50,'Bottom Image1','<img src=\"images/stories/left.jpg\" border=\"0\" /><br />',0,'user4',62,'2012-05-01 21:54:51',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(57,'Industry News','',1,'right',0,'0000-00-00 00:00:00',0,'mod_globalnews',0,0,1,'global=c\nlayout=static\ncols=1\nmargin=2px\ncat_order=1\ncat_limit=\nempty=0\nfilter=1\ncurcat=0\ncatids=35\nsecids=\ncatexc=\nsecexc=\nshow_cat=1\ncat_title=1\ncat_img_align=0\ncat_img_width=\ncat_img_height=\ncat_img_margin=3px\ncat_img_border=0\ncount=2\nordering=c_dsc\nlimittitle=\nshow_front=0\nuser_id=0\ncurrent=1\nmore=0\nwidth=auto\nborder=1px solid #EFEFEF\nheader_color=#EFEFEF\nheader_padding=5px\nheight=100px\ncolor=#FFFFFF\npadding=5px\ndelay=3000\nnext=0\nhtml=GN_title GN_break GN_break GN_text\\n\nlimittext=150\ntext=0\nstriptext=1\nallowedtags=\ndate_format=\ndate=created\nitem_img_align=left\nitem_img_width=\nitem_img_height=\nitem_img_margin=3px\nitem_img_border=0\nauthor=username\ncb_link=0\ncomments_table=#__comment\narticle_column=contentid\ncache=0\ncache_time=900\nmoduleclass_sfx=\n\n',0,0,''),(51,'Bottom Image2','<object style=\"width: 285px; height: 162px;\" type=\"application/x-shockwave-flash\" data=\"http://www.youtube.com/v/qS1NEDjxJsk?rel=0&amp;loop=1&amp;autoplay=1&amp;showsearch=0&amp;showinfo=0&amp;fs=1\">\r\n<param name=\"movie\" value=\"http://www.youtube.com/v/qS1NEDjxJsk?rel=0&amp;loop=1&amp;autoplay=1&amp;showsearch=0&amp;showinfo=0&amp;fs=1\" />\r\n<param name=\"allowFullScreen\" value=\"true\" />\r\n<param name=\"allowscriptaccess\" value=\"always\" />\r\n</object>',0,'user5',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(52,'Bottom Image3','<img src=\"images/stories/bottomrightpic.jpg\" border=\"0\" />',0,'user6',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(59,'statment','<!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves /> <w:TrackFormatting /> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF /> <w:LidThemeOther>EN-US</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> <w:SplitPgBreakAndParaMark /> <w:DontVertAlignCellWithSp /> <w:DontBreakConstrainedForcedTables /> <w:DontVertAlignInTxbx /> <w:Word11KerningPairs /> <w:CachedColBalance /> </w:Compatibility> <m:mathPr> <m:mathFont m:val=\"Cambria Math\" /> <m:brkBin m:val=\"before\" /> <m:brkBinSub m:val=\"&#45;-\" /> <m:smallFrac m:val=\"off\" /> <m:dispDef /> <m:lMargin m:val=\"0\" /> <m:rMargin m:val=\"0\" /> <m:defJc m:val=\"centerGroup\" /> <m:wrapIndent m:val=\"1440\" /> <m:intLim m:val=\"subSup\" /> <m:naryLim m:val=\"undOvr\" /> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"   DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"   LatentStyleCount=\"267\"> <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\" /> <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\" /> <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\" /> <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\" /> <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\" /> <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\" /> <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\" /> <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Table Grid\" /> <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\" /> <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\" /> <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\" /> <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\" /> <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\" /> <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\" /> <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\" /> <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\" /> <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\" /> <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\" /> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:\"Times New Roman\";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->\r\n<p class=\"MsoNormal\"><em><span style=\"font-size: 9pt; line-height: 115%;\">Please check back periodically for other news- including employment opportunities, expansion, and additional company updates.</span></em></p>',11,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(61,'Energy News','<h1>Mustang Energy News</h1>\r\n<p style=\"text-align: center;\">***We have expanded!***</p>\r\n<p>We are now offering on location <a href=\"cool-down-trailers\" target=\"_self\" title=\"Cool Down Trailers\">Cool-Down Trailers</a> to aid in the hot summer months. Check out the trailer tab for more information.</p>\r\n<div id=\"must-en-news\">Please check back periodically for other news – including employment opportunities, expansion, and additional company updates</div>',8,'right',62,'2012-05-02 11:41:59',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(62,' CKforms Form Display','',12,'left',0,'0000-00-00 00:00:00',0,'mod_ckforms',0,0,1,'displaytitle=1\n',0,0,''),(63,'contactform','',2,'right',0,'0000-00-00 00:00:00',0,'mod_ckforms',0,0,1,'id=1\ndisplaytitle=0\nmoduleclass_sfx=\n\n',0,0,''),(64,'safty_banner','<img src=\"images/stories/mustang_energ_safety_03.png\" border=\"0\" />',0,'header_banner',62,'2012-04-19 11:35:31',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(65,'fracpits_banner','<img src=\"images/stories/lining-banner.png\" border=\"0\" /><br />',2,'header_banner',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(66,'Otherlinning_banner','<img src=\"images/stories/frac.png\" border=\"0\" />',3,'header_banner',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(67,'Cooldowntrailer_banner','<img src=\"images/stories/another.png\" border=\"0\" /><br />',4,'header_banner',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(68,'contactus_banner','<img src=\"images/stories/cooldown_banner1.png\" border=\"0\" /><br />',5,'header_banner',62,'2012-04-19 11:35:35',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(69,'safety_link','<a href=\"index.php?option=com_content&amp;view=article&amp;id=57&amp;Itemid=69\"><img src=\"images/stories/sidebar_safty.png\" border=\"0\" /></a><a href=\"index.php?option=com_contact&amp;view=category&amp;catid=12&amp;Itemid=66\"><img src=\"images/stories/sidebar_contactus.png\" border=\"0\" /></a>',0,'sidebar_links',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(72,'Images - Frac Right','<p align=\"center\"><strong>Click on the images to enlarge.</strong><br /><br /><br /><a href=\"images/stories/Frac/large/0150.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/0150-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/Frac/large/FracTank2.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/FracTank2-thumb.jpg\" border=\"0\" /></a><br /><a href=\"images/stories/Frac/large/FracTank3.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/FracTank3-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/Frac/large/FracTank5.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/FracTank5-thumb.jpg\" border=\"0\" /></a><br /> <a href=\"images/stories/Frac/large/FracTank6.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/FracTank6-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/Frac/large/0284.jpg\" title=\"Frac Tank\" rel=\"lytebox[fractank]\"><img src=\"images/stories/Frac/thumbs/0284-thumb.jpg\" border=\"0\" /></a></p>',9,'right',62,'2012-05-02 11:41:57',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(73,'Images - Cool Down','<p align=\"center\"><strong>Click on the images to enlarge.</strong><br /><br /><br /><a href=\"images/stories/Cooldown/large/CoolTrailerColdWater.jpg\" title=\"Cool Down Trailer\" rel=\"lytebox[cooldown]\"><img src=\"images/stories/Cooldown/thumbs/CoolTrailerColdWater-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/Cooldown/large/CoolTrailerSafetyShower.jpg\" title=\"Cool Down Trailer\" rel=\"lytebox[cooldown]\"><img src=\"images/stories/Cooldown/thumbs/CoolTrailerSafetyShower-thumb.jpg\" border=\"0\" /></a><br /><a href=\"images/stories/Cooldown/large/MEScooltrailer.jpg\" title=\"Cool Down Trailer\" rel=\"lytebox[cooldown]\"><img src=\"images/stories/Cooldown/thumbs/MEScooltrailer-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/Cooldown/large/MEScooltrailer2.jpg\" title=\"Cool Down Trailer\" rel=\"lytebox[cooldown]\"><img src=\"images/stories/Cooldown/thumbs/MEScooltrailer2-thumb.jpg\" border=\"0\" /></a></p>',10,'right',62,'2012-05-02 11:42:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(74,'Images - Other Linings','<p align=\"center\"><strong>Click on the images to enlarge.</strong><br /><br /><br /><a href=\"images/stories/OtherLining/large/0440.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/0440-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/OtherLining/large/0374.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/0374-thumb.jpg\" border=\"0\" /></a><br /><a href=\"images/stories/OtherLining/large/0422.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/0422-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/OtherLining/large/OtherLIning.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/OtherLIning-thumb.jpg\" border=\"0\" /></a><br /><a href=\"images/stories/OtherLining/large/0458.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/0458-thumb.jpg\" border=\"0\" /></a> <a href=\"images/stories/OtherLining/large/0474.jpg\" title=\"Other Lining\" rel=\"lytebox[otherlining]\"><img src=\"images/stories/OtherLining/thumbs/0474-thumb.jpg\" border=\"0\" /></a></p>',11,'right',62,'2012-05-02 11:42:02',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(77,'Homepage Video','',0,'user5',0,'0000-00-00 00:00:00',1,'mod_avreloaded',0,0,0,'moduleclass_sfx=\nheader_text=\nmediacode={auto width=\"285\" height=\"162\"}Homepage-vid2.xml{/auto}\nfooter_text=\npopup=0\npwidth=320\npheight=180\nlinktxt=\n\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,0),(16,0),(17,0),(18,1),(19,1),(19,2),(19,4),(19,27),(19,36),(21,1),(22,1),(22,2),(22,4),(22,27),(22,36),(25,0),(27,0),(30,0),(31,1),(32,0),(33,0),(34,0),(35,0),(36,0),(38,1),(39,43),(39,44),(39,45),(39,46),(39,47),(40,0),(43,0),(44,0),(46,0),(47,0),(48,0),(50,0),(51,0),(52,0),(53,0),(55,0),(56,0),(57,0),(58,0),(59,0),(61,1),(61,59),(61,60),(62,0),(63,53),(63,54),(63,55),(63,56),(63,57),(63,58),(63,61),(63,62),(63,63),(63,64),(63,65),(63,66),(63,67),(63,68),(63,69),(64,70),(65,73),(66,63),(67,72),(68,66),(69,1),(69,20),(69,24),(69,51),(69,52),(69,58),(69,59),(69,60),(69,63),(69,66),(69,69),(69,72),(69,73),(72,73),(73,72),(74,63),(77,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
INSERT INTO `jos_newsfeeds` VALUES (4,1,'Joomla! Announcements','joomla-official-news','http://feeds.joomla.org/JoomlaAnnouncements','',1,5,3600,0,'0000-00-00 00:00:00',1,0),(4,2,'Joomla! Core Team Blog','joomla-core-team-blog','http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog','',1,5,3600,0,'0000-00-00 00:00:00',2,0),(4,3,'Joomla! Community Magazine','joomla-community-magazine','http://feeds.joomla.org/JoomlaMagazine','',1,20,3600,0,'0000-00-00 00:00:00',3,0),(4,4,'Joomla! Developer News','joomla-developer-news','http://feeds.joomla.org/JoomlaDeveloper','',1,5,3600,0,'0000-00-00 00:00:00',4,0),(4,5,'Joomla! Security News','joomla-security-news','http://feeds.joomla.org/JoomlaSecurityNews','',1,5,3600,0,'0000-00-00 00:00:00',5,0),(5,6,'Free Software Foundation Blogs','free-software-foundation-blogs','http://www.fsf.org/blogs/RSS',NULL,1,5,3600,0,'0000-00-00 00:00:00',4,0),(5,7,'Free Software Foundation','free-software-foundation','http://www.fsf.org/news/RSS',NULL,1,5,3600,62,'2008-09-14 00:24:25',3,0),(5,8,'Software Freedom Law Center Blog','software-freedom-law-center-blog','http://www.softwarefreedom.org/feeds/blog/',NULL,1,5,3600,0,'0000-00-00 00:00:00',2,0),(5,9,'Software Freedom Law Center News','software-freedom-law-center','http://www.softwarefreedom.org/feeds/news/',NULL,1,5,3600,0,'0000-00-00 00:00:00',1,0),(5,10,'Open Source Initiative Blog','open-source-initiative-blog','http://www.opensource.org/blog/feed',NULL,1,5,3600,0,'0000-00-00 00:00:00',5,0),(6,11,'PHP News and Announcements','php-news-and-announcements','http://www.php.net/feed.atom',NULL,1,5,3600,62,'2008-09-14 00:25:37',1,0),(6,12,'Planet MySQL','planet-mysql','http://www.planetmysql.org/rss20.xml',NULL,1,5,3600,62,'2008-09-14 00:25:51',2,0),(6,13,'Linux Foundation Announcements','linux-foundation-announcements','http://www.linuxfoundation.org/press/rss20.xml',NULL,1,5,3600,62,'2008-09-14 00:26:11',3,0),(6,14,'Mootools Blog','mootools-blog','http://feeds.feedburner.com/mootools-blog',NULL,1,5,3600,62,'2008-09-14 00:26:51',4,0);
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,62,'2012-03-02 12:38:09','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=1\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\nblockquote=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,8,0,1,0,0,'0000-00-00 00:00:00',''),(35,'Very Simple Image Gallery','vsig','content',0,0,1,0,0,0,'0000-00-00 00:00:00','im_width=390\nim_height=400\nim_quality=100\nim_align=1\nth_width=75\nth_height=75\nth_keep=keep\nth_quality=100\nth_space=2\nth_right=2\nth_cols=2\nth_sort=0\nsets_use=\nsets_txt=Set\nctrl_fwd=\nctrl_back=\ncap_show=1\ncap_pos=1\nlink_use=1\nlink_orig=0\nimagepath=/images/stories/\nbuttonpath=/images/stories/vsig_buttons/\nusescript=1\nth_hover=0\npreload=0\ntooltip=0\nsetid=0\n\n'),(36,'ZT Autolink Sytem 1.5','zt_autolink_system','system',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(40,'U24 - Lytebox','u24_je_plg_lytebox','system',0,0,1,0,0,0,'0000-00-00 00:00:00','useCustom=0\nupdateInterval=8760\nlyversion=\ntheme=grey\nhideFlash=1\nouterBorder=0\nresizeSpeed=8\nmaxOpacity=80\nnavType=1\nautoResize=1\ndoAnimations=1\nborderSize=12\nslideInterval=4000\nshowNavigation=1\nshowClose=1\nshowDetails=1\nshowPlayPause=1\nautoEnd=1\npauseOnNextClick=0\npauseOnPrevClick=1\n\n'),(37,'Content - SmartFormer','smartformer','content',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(38,'System - Joo Recaptcha','joo_recaptcha','system',0,0,1,0,0,0,'0000-00-00 00:00:00','public=6LcaENASAAAAAHUlJWhmFxLPw1XXys374BR5xXxD\nprivate=6LcaENASAAAAANVhip1iEnh_O7J7tgrQuBLt8Rf_\najax=1\ntemplate=0\naddToUserRegistration=1\naddToLogin=1\naddToFUser=1\naddToFPass=1\naddToContact=1\naddToSubmitLink=0\n\n'),(47,'Content - AllVideos Reloaded','avreloaded','content',0,0,1,0,0,0,'0000-00-00 00:00:00','avcss=allvideos\nwidth=400\nheight=320\nvdir=videos\nwmode=window\nbgcolor=#FFFFFF\nadir=audio\nawidth=300\naheight=20\nripcache=1\ncache_time=3600\nflashver=9.0.115\npbgcolor=#FFFFFF\npfgcolor=#000000\nphicolor=#000000\npsccolor=#000000\nautostart=0\nshownav=1\nshowdigits=1\nshowicons=1\nshowstop=0\nshowdownload=0\nusefullscreen=1\nsearchbar=0\nshoweq=0\nenablejs=0\nmenu=0\nsearchlink=\nlogo=MES-branding-logo3.png\nscreenmode=coverlay\nplsize=30\nstretch=1\nalt=\nlegacy=0\ntmargin=8\nbmargin=8\nvalign=center\n\n'),(48,'Button - AllVideos Reloaded','avreloaded','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(49,'System - AllVideos Reloaded','avreloaded','system',0,0,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
INSERT INTO `jos_poll_data` VALUES (1,14,'Community Sites',2),(2,14,'Public Brand Sites',3),(3,14,'eCommerce',1),(4,14,'Blogs',0),(5,14,'Intranets',0),(6,14,'Photo and Media Sites',2),(7,14,'All of the Above!',3),(8,14,'',0),(9,14,'',0),(10,14,'',0),(11,14,'',0),(12,14,'',0);
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
INSERT INTO `jos_poll_date` VALUES (1,'2006-10-09 13:01:58',1,14),(2,'2006-10-10 15:19:43',7,14),(3,'2006-10-11 11:08:16',7,14),(4,'2006-10-11 15:02:26',2,14),(5,'2006-10-11 15:43:03',7,14),(6,'2006-10-11 15:43:38',7,14),(7,'2006-10-12 00:51:13',2,14),(8,'2007-05-10 19:12:29',3,14),(9,'2007-05-14 14:18:00',6,14),(10,'2007-06-10 15:20:29',6,14),(11,'2007-07-03 12:37:53',2,14);
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
INSERT INTO `jos_polls` VALUES (14,'Joomla! is used for?','joomla-is-used-for',11,0,'0000-00-00 00:00:00',1,0,86400);
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
INSERT INTO `jos_sections` VALUES (6,'Mustang Energy News','','mustang-energy-news','','content','left','Mustang Energy News',1,0,'0000-00-00 00:00:00',2,0,3,''),(5,'Pages','','pages','','content','left','',1,0,'0000-00-00 00:00:00',1,0,3,'');
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('','1399639321','9q6rivc6bsja2p2btonqv9ga94',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:4;s:19:\"session.timer.start\";i:1399639255;s:18:\"session.timer.last\";i:1399639303;s:17:\"session.timer.now\";i:1399639321;s:22:\"session.client.browser\";s:164:\"Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SCH-I545 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:69:\"/home/content/46/9289246/html/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}'),('','1399639369','icm2slp6unk4alhvlmibggghp0',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1399639369;s:18:\"session.timer.last\";i:1399639369;s:17:\"session.timer.now\";i:1399639369;s:22:\"session.client.browser\";s:162:\"Mozilla/5.0 (Linux; Android 4.3; en-us; SAMSUNG-SGH-I337 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:69:\"/home/content/46/9289246/html/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_smartformer_data`
--

DROP TABLE IF EXISTS `jos_smartformer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_smartformer_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `rand` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_smartformer_data`
--

LOCK TABLES `jos_smartformer_data` WRITE;
/*!40000 ALTER TABLE `jos_smartformer_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_smartformer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_smartformer_forms`
--

DROP TABLE IF EXISTS `jos_smartformer_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_smartformer_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `data1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data3` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data4` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data5` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data6` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data7` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data8` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data9` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data10` longtext COLLATE utf8_unicode_ci NOT NULL,
  `element_to_page` text COLLATE utf8_unicode_ci NOT NULL,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` text COLLATE utf8_unicode_ci NOT NULL,
  `css_list` text COLLATE utf8_unicode_ci NOT NULL,
  `js_list` text COLLATE utf8_unicode_ci NOT NULL,
  `php_list` text COLLATE utf8_unicode_ci NOT NULL,
  `filter` text COLLATE utf8_unicode_ci NOT NULL,
  `enable_notif` tinyint(4) NOT NULL DEFAULT '0',
  `email_format` tinyint(4) NOT NULL DEFAULT '2',
  `fromname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fromemail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_template` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_smartformer_forms`
--

LOCK TABLES `jos_smartformer_forms` WRITE;
/*!40000 ALTER TABLE `jos_smartformer_forms` DISABLE KEYS */;
INSERT INTO `jos_smartformer_forms` VALUES (1,'Contact Form (example)',1,'<input name=\"c_form_element1\" id=\"c_form_element1\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: default; left: 129px; top: 41px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(1)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(1,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element2\" id=\"c_form_element2\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 192); z-index: 0; cursor: default; left: 129px; top: 71px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(2)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(2,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><textarea name=\"c_form_element3\" id=\"c_form_element3\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 88px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 192); z-index: 0; cursor: row-resize; left: 129px; top: 101px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(3)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(3,event)\" onmouseup=\"javascript:element_m_up(event)\"></textarea><select name=\"c_form_element4\" id=\"c_form_element4\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: default; left: 128px; top: 234px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(4)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(4,event)\" onmouseup=\"javascript:element_m_up(event)\"><option value=\"0,United States\">United States</option><option value=\"1,Afghanistan\">Afghanistan</option><option value=\"2,Albania\">Albania</option><option value=\"3,Algeria\">Algeria</option><option value=\"4,American Samoa\">American Samoa</option><option value=\"5,Andorra\">Andorra</option><option value=\"6,Angola\">Angola</option><option value=\"7,Anguilla\">Anguilla</option><option value=\"8,Antarctica\">Antarctica</option><option value=\"9,Antigua and Barbuda\">Antigua and Barbuda</option><option value=\"10,Argentina\">Argentina</option><option value=\"11,Armenia\">Armenia</option><option value=\"12,Aruba\">Aruba</option><option value=\"13,Australia\">Australia</option><option value=\"14,Austria\">Austria</option><option value=\"15,Azerbaijan\">Azerbaijan</option><option value=\"16,Bahamas\">Bahamas</option><option value=\"17,Bahrain\">Bahrain</option><option value=\"18,Bangladesh\">Bangladesh</option><option value=\"19,Barbados\">Barbados</option><option value=\"20,Belarus\">Belarus</option><option value=\"21,Belgium\">Belgium</option><option value=\"22,Belize\">Belize</option><option value=\"23,Benin\">Benin</option><option value=\"24,Bermuda\">Bermuda</option><option value=\"25,Bhutan\">Bhutan</option><option value=\"26,Bolivia\">Bolivia</option><option value=\"27,Bosnia and Herzegovina\">Bosnia and Herzegovina</option><option value=\"28,Botswana\">Botswana</option><option value=\"29,Brazil\">Brazil</option><option value=\"30,Brunei\">Brunei</option><option value=\"31,Bulgaria\">Bulgaria</option><option value=\"32,Burkina Faso\">Burkina Faso</option><option value=\"33,Burundi\">Burundi</option><option value=\"34,Cambodia\">Cambodia</option><option value=\"35,Cameroon\">Cameroon</option><option value=\"36,Canada\">Canada</option><option value=\"37,Cape Verde\">Cape Verde</option><option value=\"38,Cayman Islands\">Cayman Islands</option><option value=\"39,Central African Republic\">Central African Republic</option><option value=\"40,Chad\">Chad</option><option value=\"41,Chile\">Chile</option><option value=\"42,China\">China</option><option value=\"43,Colombia\">Colombia</option><option value=\"44,Comoros\">Comoros</option><option value=\"45,Congo\">Congo</option><option value=\"46,Cook Islands\">Cook Islands</option><option value=\"47,Costa Rica\">Costa Rica</option><option value=\"48,Cote D`ivoire Ivory Coast\">Cote D`ivoire Ivory Coast</option><option value=\"49,Croatia Hrvatska\">Croatia Hrvatska</option><option value=\"50,Cuba\">Cuba</option><option value=\"51,Cyprus\">Cyprus</option><option value=\"52,Czech Republic\">Czech Republic</option><option value=\"53,Denmark\">Denmark</option><option value=\"54,Djibouti\">Djibouti</option><option value=\"55,Dominica\">Dominica</option><option value=\"56,Dominican Republic\">Dominican Republic</option><option value=\"57,East Timor\">East Timor</option><option value=\"58,Ecuador\">Ecuador</option><option value=\"59,Egypt\">Egypt</option><option value=\"60,El Salvador\">El Salvador</option><option value=\"61,Equatorial Guinea\">Equatorial Guinea</option><option value=\"62,Eritrea\">Eritrea</option><option value=\"63,Estonia\">Estonia</option><option value=\"64,Ethiopia\">Ethiopia</option><option value=\"65,Faroe Islands\">Faroe Islands</option><option value=\"66,Fiji Islands\">Fiji Islands</option><option value=\"67,Finland\">Finland</option><option value=\"68,France\">France</option><option value=\"69,French Guiana\">French Guiana</option><option value=\"70,French Polynesia\">French Polynesia</option><option value=\"71,French Southern Territories\">French Southern Territories</option><option value=\"72,Gabon\">Gabon</option><option value=\"73,Gambia, The\">Gambia, The</option><option value=\"74,Georgia\">Georgia</option><option value=\"75,Germany\">Germany</option><option value=\"76,Ghana\">Ghana</option><option value=\"77,Gibraltar\">Gibraltar</option><option value=\"78,Greece\">Greece</option><option value=\"79,Greenland\">Greenland</option><option value=\"80,Grenada\">Grenada</option><option value=\"81,Guadeloupe\">Guadeloupe</option><option value=\"82,Guam\">Guam</option><option value=\"83,Guatemala\">Guatemala</option><option value=\"84,Guinea\">Guinea</option><option value=\"85,Guinea-Bissau\">Guinea-Bissau</option><option value=\"86,Guyana\">Guyana</option><option value=\"87,Haiti\">Haiti</option><option value=\"88,Honduras\">Honduras</option><option value=\"89,Hungary\">Hungary</option><option value=\"90,Iceland\">Iceland</option><option value=\"91,India\">India</option><option value=\"92,Indonesia\">Indonesia</option><option value=\"93,Iran\">Iran</option><option value=\"94,Iraq\">Iraq</option><option value=\"95,Ireland\">Ireland</option><option value=\"96,Israel\">Israel</option><option value=\"97,Italy\">Italy</option><option value=\"98,Jamaica\">Jamaica</option><option value=\"99,Japan\">Japan</option><option value=\"100,Jordan\">Jordan</option><option value=\"101,Kazakhstan\">Kazakhstan</option><option value=\"102,Kenya\">Kenya</option><option value=\"103,Kiribati\">Kiribati</option><option value=\"104,Korea\">Korea</option><option value=\"105,Korea, North\">Korea, North</option><option value=\"106,Kuwait\">Kuwait</option><option value=\"107,Kyrgyzstan\">Kyrgyzstan</option><option value=\"108,Laos\">Laos</option><option value=\"109,Latvia\">Latvia</option><option value=\"110,Lebanon\">Lebanon</option><option value=\"111,Lesotho\">Lesotho</option><option value=\"112,Liberia\">Liberia</option><option value=\"113,Libya\">Libya</option><option value=\"114,Liechtenstein\">Liechtenstein</option><option value=\"115,Lithuania\">Lithuania</option><option value=\"116,Luxembourg\">Luxembourg</option><option value=\"117,Macedonia\">Macedonia</option><option value=\"118,Madagascar\">Madagascar</option><option value=\"119,Malawi\">Malawi</option><option value=\"120,Malaysia\">Malaysia</option><option value=\"121,Maldives\">Maldives</option><option value=\"122,Mali\">Mali</option><option value=\"123,Malta\">Malta</option><option value=\"124,Marshall Islands\">Marshall Islands</option><option value=\"125,Martinique\">Martinique</option><option value=\"126,Mauritania\">Mauritania</option><option value=\"127,Mauritius\">Mauritius</option><option value=\"128,Mexico\">Mexico</option><option value=\"129,Micronesia\">Micronesia</option><option value=\"130,Moldova\">Moldova</option><option value=\"131,Monaco\">Monaco</option><option value=\"132,Mongolia\">Mongolia</option><option value=\"133,Montserrat\">Montserrat</option><option value=\"134,Morocco\">Morocco</option><option value=\"135,Mozambique\">Mozambique</option><option value=\"136,Namibia\">Namibia</option><option value=\"137,Nauru\">Nauru</option><option value=\"138,Nepal\">Nepal</option><option value=\"139,Netherlands Antilles\">Netherlands Antilles</option><option value=\"140,Netherlands, The\">Netherlands, The</option><option value=\"141,New Caledonia\">New Caledonia</option><option value=\"142,New Zealand\">New Zealand</option><option value=\"143,Nicaragua\">Nicaragua</option><option value=\"144,Niger\">Niger</option><option value=\"145,Nigeria\">Nigeria</option><option value=\"146,Niue\">Niue</option><option value=\"147,Norfolk Island\">Norfolk Island</option><option value=\"148,Northern Mariana Islands\">Northern Mariana Islands</option><option value=\"149,Norway\">Norway</option><option value=\"150,Oman\">Oman</option><option value=\"151,Pakistan\">Pakistan</option><option value=\"152,Palau\">Palau</option><option value=\"153,Panama\">Panama</option><option value=\"154,Papua New Guinea\">Papua New Guinea</option><option value=\"155,Paraguay\">Paraguay</option><option value=\"156,Peru\">Peru</option><option value=\"157,Philippines\">Philippines</option><option value=\"158,Pitcairn Island\">Pitcairn Island</option><option value=\"159,Poland\">Poland</option><option value=\"160,Portugal\">Portugal</option><option value=\"161,Puerto Rico\">Puerto Rico</option><option value=\"162,Qatar\">Qatar</option><option value=\"163,Reunion\">Reunion</option><option value=\"164,Romania\">Romania</option><option value=\"165,Russia\">Russia</option><option value=\"166,Rwanda\">Rwanda</option><option value=\"167,Saint Helena\">Saint Helena</option><option value=\"168,Saint Kitts and Nevis\">Saint Kitts and Nevis</option><option value=\"169,Saint Lucia\">Saint Lucia</option><option value=\"170,Saint Pierre and Miquelon\">Saint Pierre and Miquelon</option><option value=\"171,Samoa\">Samoa</option><option value=\"172,San Marino\">San Marino</option><option value=\"173,Sao Tome and Principe\">Sao Tome and Principe</option><option value=\"174,Saudi Arabia\">Saudi Arabia</option><option value=\"175,Senegal\">Senegal</option><option value=\"176,Seychelles\">Seychelles</option><option value=\"177,Sierra Leone\">Sierra Leone</option><option value=\"178,Singapore\">Singapore</option><option value=\"179,Slovakia\">Slovakia</option><option value=\"180,Slovenia\">Slovenia</option><option value=\"181,Solomon Islands\">Solomon Islands</option><option value=\"182,Somalia\">Somalia</option><option value=\"183,South Africa\">South Africa</option><option value=\"184,Spain\">Spain</option><option value=\"185,Sri Lanka\">Sri Lanka</option><option value=\"186,Sudan\">Sudan</option><option value=\"187,Suriname\">Suriname</option><option value=\"188,Swaziland\">Swaziland</option><option value=\"189,Sweden\">Sweden</option><option value=\"190,Switzerland\">Switzerland</option><option value=\"191,Syria\">Syria</option><option value=\"192,Taiwan\">Taiwan</option><option value=\"193,Tajikistan\">Tajikistan</option><option value=\"194,Tanzania\">Tanzania</option><option value=\"195,Thailand\">Thailand</option><option value=\"196,Togo\">Togo</option><option value=\"197,Tokelau\">Tokelau</option><option value=\"198,Tonga\">Tonga</option><option value=\"199,Trinidad and Tobago\">Trinidad and Tobago</option><option value=\"200,Tunisia\">Tunisia</option><option value=\"201,Turkey\">Turkey</option><option value=\"202,Turkmenistan\">Turkmenistan</option><option value=\"203,Turks and Caicos Islands\">Turks and Caicos Islands</option><option value=\"204,Tuvalu\">Tuvalu</option><option value=\"205,Uganda\">Uganda</option><option value=\"206,Ukraine\">Ukraine</option><option value=\"207,United Arab Emirates\">United Arab Emirates</option><option value=\"208,United Kingdom\">United Kingdom</option><option value=\"209,Uruguay\">Uruguay</option><option value=\"210,Uzbekistan\">Uzbekistan</option><option value=\"211,Vanuatu\">Vanuatu</option><option value=\"212,Venezuela\">Venezuela</option><option value=\"213,Vietnam\">Vietnam</option><option value=\"214,Virgin Islands British\">Virgin Islands British</option><option value=\"215,Virgin Islands US\">Virgin Islands US</option><option value=\"216,Wallis and Futuna Islands\">Wallis and Futuna Islands</option><option value=\"217,Yemen\">Yemen</option><option value=\"218,Yugoslavia\">Yugoslavia</option><option value=\"219,Zambia\">Zambia</option><option value=\"220,Zimbabwe\">Zimbabwe</option></select><input name=\"c_form_element5\" id=\"c_form_element5\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: row-resize; left: 128px; top: 264px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(5)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(5,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element6\" id=\"c_form_element6\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: row-resize; left: 128px; top: 294px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(6)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(6,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element7\" id=\"c_form_element7\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 250px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 192); z-index: 0; cursor: default; left: 128px; top: 344px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(7)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(7,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><img name=\"captcha\" id=\"c_form_element8\" title=\"\" src=\"http://avantgarde-it.com/clients/dev5/mustang/administrator/components/com_smartformer/admin/captcha.png\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 149px; height: 34px; z-index: 0; cursor: default; left: 129px; top: 374px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(8)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(8,event)\" onmouseup=\"javascript:element_m_up(event)\"><input id=\"c_form_element9\" title=\"\" value=\"Send\" style=\"margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: default; left: 128px; top: 423px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(9)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(9,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><div id=\"c_form_element10\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 41px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 0; cursor: col-resize; left: 84px; top: 41px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(10)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(10,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Name:</b></div><div id=\"c_form_element11\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 39px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(128, 0, 0); z-index: 0; cursor: col-resize; left: 83px; top: 71px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(11)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(11,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>E-Mail:</b></div><div id=\"c_form_element12\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 58px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(128, 0, 0); z-index: 0; cursor: col-resize; left: 65px; top: 138px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(12)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(12,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Message:</b></div><div id=\"c_form_element13\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 49px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 0; cursor: col-resize; left: 72px; top: 234px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(13)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(13,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Country:</b></div><div id=\"c_form_element14\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 59px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 0; cursor: default; left: 63px; top: 264px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(14)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(14,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Company:</b></div><div id=\"c_form_element15\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 88px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 0; cursor: default; left: 32px; top: 296px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(15)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(15,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Phone Number:</b></div><div id=\"c_form_element16\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 94px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(128, 0, 0); z-index: 0; cursor: col-resize; left: 25px; top: 345px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(16)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(16,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Protection Code:</b></div><div id=\"c_form_element17\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 297px; height: 16px; font-family: Arial; font-size: 10px; color: rgb(0, 0, 0); z-index: 0; cursor: default; left: 112px; top: 323px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(17)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(17,event)\" onmouseup=\"javascript:element_m_up(event)\">Please, enter the text shown in the image into the field below.</div><div id=\"c_form_element18\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 104px; height: 22px; font-family: Arial; font-size: 18px; color: rgb(0, 0, 255); z-index: 0; cursor: row-resize; left: 25px; top: 10px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(18)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(18,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Contact Us</b></div><input name=\"c_form_element20\" id=\"c_form_element20\" size=\"33\" title=\"\" style=\"border: 1px solid blue; margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 0; cursor: default; left: 129px; top: 201px;\" javascript:element_m_move()=\"\" onmouseover=\"javascript:element_m_over(20)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(20,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"file\"><div id=\"c_form_element21\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 0; cursor: row-resize; left: 55px; top: 202px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(21)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(21,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Upload File:</b></div>','<div id=\"c_form_element19\" title=\"\" style=\"border: 0px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: hidden; width: 251px; height: 22px; font-family: Arial; font-size: 18px; color: rgb(0, 0, 0); z-index: 0; cursor: default; left: 44px; top: 43px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(19)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(19,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Thank You for contacting us!</b></div>','','','','','','','','','1|1|1|Name|0|0|0|0|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|129|41|250|18|-1|undefined|undefined|undefined~2|1|1|Email|0|0|0|1|3|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|129|71|250|18|-1|undefined|undefined|undefined~3|1|3|Message|0|0|0|1|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|129|101|250|88|-1|undefined|undefined|undefined~4|1|7|Country|0|0|0|0|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|128|234|250|18|-1|undefined|undefined|undefined~5|1|1|Company|0|0|0|0|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|128|264|250|18|-1|undefined|undefined|undefined~6|1|1|Phone|0|0|0|0|11|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|128|294|250|18|-1|undefined|undefined|undefined~7|1|1|Protection Code|0|0|0|1|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|128|344|250|18|-1|undefined|undefined|undefined~8|1|12|c_form_element8|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|129|374|149|34|7|undefined|undefined|undefined~9|1|8|c_form_element9|1|1|0|0|0||||-1|false|||1|128|423|50|20|-1|undefined|undefined|undefined~10|1|10|c_form_element10|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|84|41|41|20|-1|undefined|undefined|undefined~11|1|10|c_form_element11|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|83|71|39|20|-1|undefined|undefined|undefined~12|1|10|c_form_element12|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|65|138|58|20|-1|undefined|undefined|undefined~13|1|10|c_form_element13|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|72|234|49|20|-1|undefined|undefined|undefined~14|1|10|c_form_element14|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|63|264|59|20|-1|undefined|undefined|undefined~15|1|10|c_form_element15|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|32|296|88|20|-1|undefined|undefined|undefined~16|1|10|c_form_element16|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|25|345|94|20|-1|undefined|undefined|undefined~17|1|10|c_form_element17|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|112|323|297|16|-1|undefined|undefined|undefined~18|1|10|c_form_element18|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|25|10|104|22|-1|undefined|undefined|undefined~19|2|10|c_form_element19|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|44|43|251|22|-1|undefined|undefined|undefined~20|1|13|c_form_element20|0|0|0|0|0|1px 1px 1px 1px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|129|201|150|20|-1|-1|-1|0~21|1|10|c_form_element21|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|solid solid solid solid|-1|false|||1|55|202|70|20|-1|-1|-1|0~',0,'2008-04-26 16:26:40','admin','','','','','c_form_element1{#sep#}c_form_element2{#sep#}c_form_element3{#sep#}c_form_element4{#sep#}c_form_element5{#sep#}c_form_element6{#sep#}c_form_element7{#sep#}',0,2,'','','','','','',''),(2,'Complex form (Example)',1,'<img id=\"c_form_element47\" title=\"\" src=\"http://avantgarde-it.com/clients/dev5/mustang/images/stories/clock.jpg\" style=\"border: 1px solid blue; margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 355px; height: 430px; z-index: 1; cursor: default; left: 0px; top: 0px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(47)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(47,event)\" onmouseup=\"javascript:element_m_up(event)\"><div id=\"c_form_element1\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 148px; height: 20px; font-family: Arial Black; font-size: 17px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 78px; top: 16px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(1)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(1,event)\" onmouseup=\"javascript:element_m_up(event)\">Travel Request</div><input name=\"c_form_element2\" id=\"c_form_element2\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 46px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(2)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(2,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element3\" id=\"c_form_element3\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 78px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(3)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(3,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element4\" id=\"c_form_element4\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: row-resize; left: 148px; top: 107px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(4)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(4,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element5\" id=\"c_form_element5\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 138px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(5)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(5,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element6\" id=\"c_form_element6\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 167px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(6)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(6,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element7\" id=\"c_form_element7\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 199px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(7)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(7,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"password\"><input name=\"c_form_element8\" id=\"c_form_element8\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 148px; top: 230px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(8)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(8,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"password\"><div id=\"c_form_element9\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 74px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 58px; top: 46px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(9)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(9,event)\" onmouseup=\"javascript:element_m_up(event)\">First Name</div><div id=\"c_form_element10\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 59px; top: 77px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(10)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(10,event)\" onmouseup=\"javascript:element_m_up(event)\">Last Name</div><div id=\"c_form_element11\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 62px; top: 106px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(11)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(11,event)\" onmouseup=\"javascript:element_m_up(event)\">Username</div><div id=\"c_form_element12\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 98px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 32px; top: 134px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(12)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(12,event)\" onmouseup=\"javascript:element_m_up(event)\">E-mail address</div><div id=\"c_form_element13\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 99px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 35px; top: 165px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(13)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(13,event)\" onmouseup=\"javascript:element_m_up(event)\">Re-type e-mail</div><div id=\"c_form_element14\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 65px; top: 201px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(14)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(14,event)\" onmouseup=\"javascript:element_m_up(event)\">Password</div><div id=\"c_form_element15\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 118px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 13px; top: 235px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(15)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(15,event)\" onmouseup=\"javascript:element_m_up(event)\">Re-type password</div><img name=\"captcha\" id=\"c_form_element16\" title=\"\" src=\"http://avantgarde-it.com/clients/dev5/mustang/administrator/components/com_smartformer/admin/captcha.png\" style=\"border: 0px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 149px; height: 34px; z-index: 1; cursor: default; left: 65px; top: 304px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(16)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(16,event)\" onmouseup=\"javascript:element_m_up(event)\"><div id=\"c_form_element17\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 272px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 33px; top: 280px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(17)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(17,event)\" onmouseup=\"javascript:element_m_up(event)\">please insert the symbols from the image below</div><input name=\"c_form_element18\" id=\"c_form_element18\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 59px; top: 354px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(18)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(18,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input id=\"c_form_element19\" title=\"\" value=\"Reset\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 64); z-index: 1; cursor: default; left: 78px; top: 392px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(19)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(19,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><input id=\"c_form_element20\" title=\"\" value=\"Next\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 64); z-index: 1; cursor: default; left: 151px; top: 391px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(20)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(20,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\">','<img id=\"c_form_element48\" title=\"\" src=\"http://avantgarde-it.com/clients/dev5/mustang/images/stories/clock.jpg\" style=\"border: 0px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 355px; height: 596px; z-index: 1; cursor: default; left: 0px; top: 2px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(48)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(48,event)\" onmouseup=\"javascript:element_m_up(event)\"><div id=\"c_form_element21\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 153px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 94px; top: 19px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(21)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(21,event)\" onmouseup=\"javascript:element_m_up(event)\">Please select the country</div><select name=\"c_form_element22\" id=\"c_form_element22\" title=\"\" size=\"3\" style=\"border: 1px solid blue; margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 68px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 149px; top: 51px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(22)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(22,event)\" onmouseup=\"javascript:element_m_up(event)\"><option value=\"0,Bulgaria\">Bulgaria</option><option value=\"1,Spain\">Spain</option><option value=\"2,Turkey\">Turkey</option><option value=\"3,France\">France</option><option value=\"4,Russia\">Russia</option><option value=\"5,Bahamas\">Bahamas</option></select><div id=\"c_form_element23\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 192px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 77px; top: 209px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(23)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(23,event)\" onmouseup=\"javascript:element_m_up(event)\">Please specify the dates of travel</div><div id=\"c_form_element25\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 67px; top: 239px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(25)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(25,event)\" onmouseup=\"javascript:element_m_up(event)\">Entrance</div><div id=\"c_form_element26\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 63px; top: 272px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(26)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(26,event)\" onmouseup=\"javascript:element_m_up(event)\">Departure</div><select name=\"c_form_element28\" id=\"c_form_element28\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 38px; top: 169px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(28)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(28,event)\" onmouseup=\"javascript:element_m_up(event)\"><option value=\"0,--Please select--\">--Please select--</option></select><div id=\"c_form_element29\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 94px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 127px; top: 139px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(29)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(29,event)\" onmouseup=\"javascript:element_m_up(event)\">Select the tour</div><div id=\"c_form_element30\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 177px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 67px; top: 433px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(30)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(30,event)\" onmouseup=\"javascript:element_m_up(event)\">Specify the number of people</div><input name=\"c_form_element31\" id=\"c_form_element31\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(255, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: col-resize; left: 234px; top: 170px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(31)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(31,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><select name=\"c_form_element32\" id=\"c_form_element32\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 39px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 149px; top: 459px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(32)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(32,event)\" onmouseup=\"javascript:element_m_up(event)\"><option value=\"0,1\">1</option><option value=\"1,2\">2</option><option value=\"2,3\">3</option><option value=\"3,4\">4</option><option value=\"4,5\">5</option><option value=\"5,6\">6</option><option value=\"6,7\">7</option><option value=\"7,8\">8</option><option value=\"8,9\">9</option></select><div id=\"c_form_element33\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 55px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 85px; top: 461px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(33)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(33,event)\" onmouseup=\"javascript:element_m_up(event)\">Adults</div><div id=\"c_form_element34\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 72px; top: 492px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(34)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(34,event)\" onmouseup=\"javascript:element_m_up(event)\">Children</div><select name=\"c_form_element35\" id=\"c_form_element35\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 39px; height: 18px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 149px; top: 493px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(35)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(35,event)\" onmouseup=\"javascript:element_m_up(event)\"><option value=\"0,1\">1</option><option value=\"1,2\">2</option><option value=\"2,3\">3</option><option value=\"3,4\">4</option></select><div id=\"c_form_element36\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 20px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 150px; top: 338px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(36)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(36,event)\" onmouseup=\"javascript:element_m_up(event)\"><input value=\"i_form_element36\" name=\"c_form_group1\" id=\"i_form_element36\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(36)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(36,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"radio\"></div><div id=\"c_form_element37\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 20px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 150px; top: 364px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(37)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(37,event)\" onmouseup=\"javascript:element_m_up(event)\"><input value=\"i_form_element37\" name=\"c_form_group1\" id=\"i_form_element37\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(37)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(37,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"radio\"></div><div id=\"c_form_element38\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 37px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 102px; top: 338px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(38)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(38,event)\" onmouseup=\"javascript:element_m_up(event)\">Yes</div><div id=\"c_form_element39\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 31px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 107px; top: 367px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(39)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(39,event)\" onmouseup=\"javascript:element_m_up(event)\">No</div><div id=\"c_form_element40\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 226px; height: 20px; font-family: Arial Black; font-size: 10px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 48px; top: 311px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(40)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(40,event)\" onmouseup=\"javascript:element_m_up(event)\">Do you plan to take children with you?</div><div id=\"c_form_element41\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 242px; height: 33px; font-family: Arial Black; font-size: 11px; color: rgb(255, 0, 0); z-index: 1; cursor: col-resize; left: 54px; top: 393px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(41)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(41,event)\" onmouseup=\"javascript:element_m_up(event)\"></div><input id=\"c_form_element42\" title=\"\" value=\"Preview\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 64); z-index: 1; cursor: col-resize; left: 66px; top: 570px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(42)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(42,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><input id=\"c_form_element43\" title=\"\" value=\"Submit\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 64); z-index: 1; cursor: default; left: 159px; top: 569px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(43)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(43,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><div id=\"c_form_element45\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 77px; top: 69px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(45)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(45,event)\" onmouseup=\"javascript:element_m_up(event)\">Country</div><input name=\"c_form_element49\" id=\"c_form_element49\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: col-resize; left: 200px; top: 237px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(49)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(49,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><input name=\"c_form_element50\" id=\"c_form_element50\" maxlength=\"255\" title=\"\" style=\"border: 2px solid rgb(0, 0, 64); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 150px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 201px; top: 271px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(50)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(50,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><div id=\"c_form_element51\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 35px; height: 20px; font-family: Arial Black; font-size: 13px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 199px; top: 172px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(51)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(51,event)\" onmouseup=\"javascript:element_m_up(event)\">USD</div><input name=\"c_form_element52\" id=\"c_form_element52\" maxlength=\"255\" title=\"\" style=\"border: 1px solid rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 70px; height: 18px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 64); z-index: 1; cursor: row-resize; left: 149px; top: 524px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(52)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(52,event)\" onmouseup=\"javascript:element_m_up(event)\" value=\"\" type=\"text\"><div id=\"c_form_element53\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 94px; height: 20px; font-family: Arial Black; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: col-resize; left: 45px; top: 523px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(53)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(53,event)\" onmouseup=\"javascript:element_m_up(event)\">TOTAL PRICE</div><input id=\"c_form_element54\" title=\"\" value=\"...\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 23px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: col-resize; left: 171px; top: 238px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(54)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(54,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><input id=\"c_form_element55\" title=\"\" value=\"...\" style=\"border: 2px outset rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 23px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 171px; top: 272px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(55)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(55,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\">','<input id=\"c_form_element44\" title=\"\" value=\"Print\" style=\"border: 1px solid red; margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 50px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); z-index: 1; cursor: default; left: 112px; top: 286px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(44)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(44,event)\" onmouseup=\"javascript:element_m_up(event)\" type=\"button\"><div id=\"c_form_element56\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 129px; height: 24px; font-family: Arial; font-size: 20px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 35px; top: 22px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(56)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(56,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Tour Details</b></div><div id=\"c_form_element57\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 203px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 31px; top: 54px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(57)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(57,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>First name:</b> {%val2}</div><div id=\"c_form_element58\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 203px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 31px; top: 75px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(58)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(58,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Last name:</b> {%val3}</div><div id=\"c_form_element59\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 191px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 59px; top: 96px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(59)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(59,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Email:</b> {%val4}</div><div id=\"c_form_element60\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 203px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 44px; top: 116px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(60)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(60,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Country:</b> {%val22}</div><div id=\"c_form_element61\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 193px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 60px; top: 135px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(61)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(61,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Tour:</b> {%val28}</div><div id=\"c_form_element62\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 184px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 35px; top: 155px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(62)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(62,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Entrance:</b> {%val49}</div><div id=\"c_form_element63\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 164px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 29px; top: 175px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(63)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(63,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Departure:</b> {%val50}</div><div id=\"c_form_element64\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 148px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 50px; top: 196px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(64)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(64,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Adults:</b> {%val32}</div><div id=\"c_form_element65\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 132px; height: 20px; font-family: Arial; font-size: 12px; color: rgb(0, 0, 0); z-index: 1; cursor: row-resize; left: 38px; top: 218px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(65)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(65,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Children:</b> {%val35}</div><div id=\"c_form_element66\" title=\"\" style=\"border: 1px none rgb(136, 136, 136); margin: 0pt; padding: 0px; position: absolute; visibility: visible; width: 123px; height: 20px; font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); z-index: 1; cursor: default; left: 46px; top: 252px;\" onmousemove=\"javascript:element_m_move()\" onmouseover=\"javascript:element_m_over(66)\" onmouseout=\"javascript:element_m_out()\" onmousedown=\"javascript:element_m_down(66,event)\" onmouseup=\"javascript:element_m_up(event)\"><b>Total:</b> {%val52}</div>','','','','','','','','1|1|10|c_form_element1|0|0|0|0|0|1px|#888888|none|-1|false|||1|78|16|148|20|-1|-1|-1|0|-1|1||~2|1|1|first name|0|0|0|1|1|2px|#000040|solid|-1|false|||1|148|46|150|18|-1|-1|-1|0|-1|1||~3|1|1|last name|0|0|0|1|1|2px|#000040|solid|-1|false|||1|148|78|150|18|-1|-1|-1|0|-1|1||~4|1|1|username|0|0|0|1|0|2px|#000040|solid|-1|false|||1|148|107|150|18|-1|-1|-1|0|-1|1||~5|1|1|email|0|0|0|1|3|2px|#000040|solid|-1|false|||1|148|138|150|18|-1|-1|-1|0|-1|1||~6|1|1|retype email|0|0|0|1|3|2px|#000040|solid|-1|false|||1|148|167|150|18|-1|5|-1|0|-1|1||~7|1|2|password|0|0|0|1|0|2px|#000040|solid|-1|false|||1|148|199|150|18|-1|-1|-1|0|-1|1||~8|1|2|retype passowrd|0|0|0|1|0|2px|#000040|solid|-1|false|||1|148|230|150|18|-1|7|-1|0|-1|1||~9|1|10|c_form_element9|0|0|0|0|0|1px|#888888|none|-1|false|||1|58|46|74|20|-1|-1|-1|0|-1|1||~10|1|10|c_form_element10|0|0|0|0|0|1px|#888888|none|-1|false|||1|59|77|70|20|-1|-1|-1|0|-1|1||~11|1|10|c_form_element11|0|0|0|0|0|1px|#888888|none|-1|false|||1|62|106|70|20|-1|-1|-1|0|-1|1||~12|1|10|c_form_element12|0|0|0|0|0|1px|#888888|none|-1|false|||1|32|134|98|20|-1|-1|-1|0|-1|1||~13|1|10|c_form_element13|0|0|0|0|0|1px|#888888|none|-1|false|||1|35|165|99|20|-1|-1|-1|0|-1|1||~14|1|10|c_form_element14|0|0|0|0|0|1px|#888888|none|-1|false|||1|65|201|70|20|-1|-1|-1|0|-1|1||~15|1|10|c_form_element15|0|0|0|0|0|1px|#888888|none|-1|false|||1|13|235|118|20|-1|-1|-1|0|-1|1||~16|1|12|c_form_element16|0|0|0|0|0|0px|#888888|none|-1|false|||1|65|304|149|34|18|-1|-1|0|-1|1||~17|1|10|c_form_element17|0|0|0|0|0|1px|#888888|none|-1|false|||1|33|280|272|20|-1|-1|-1|0|-1|1||~18|1|1|captcha|0|0|0|1|0|2px|#000040|solid|-1|false|||1|59|354|150|18|-1|-1|-1|0|-1|1||~19|1|8|c_form_element19|6|0|0|0|0|2px|#888888|outset|-1|false|||1|78|392|50|20|-1|-1|-1|1|-1|1||~20|1|8|c_form_element20|1|0|0|0|0|2px|#888888|outset|-1|false|||1|151|391|50|20|-1|-1|-1|1|-1|1||~21|2|10|c_form_element21|0|0|0|0|0|1px|#888888|none|-1|false|||1|94|19|153|20|-1|-1|-1|0|-1|1||~22|2|6|countries|0|0|0|1|0|2px|#000040|solid|-1|false|||1|149|51|150|68|-1|-1|-1|0|-1|1||onchange=\"country_change(this)\"~23|2|10|c_form_element23|0|0|0|0|0|1px|#888888|none|-1|false|||1|77|209|192|20|-1|-1|-1|0|-1|1||~24|2|-1|c_form_element24|7|0|0|0|0|0px|#888888|none|-1|false|||1|149|231|32|32|-1|-1|-1|1|49|1||~25|2|10|c_form_element25|0|0|0|0|0|1px|#888888|none|-1|false|||1|67|239|70|20|-1|-1|-1|0|-1|1||~26|2|10|c_form_element26|0|0|0|0|0|1px|#888888|none|-1|false|||1|63|272|70|20|-1|-1|-1|0|-1|1||~27|2|-1|c_form_element27|7|0|0|0|0|0px|#888888|none|-1|false|||1|149|266|32|32|-1|-1|-1|1|50|1||~28|2|7|tours|0|0|0|1|0|2px|#000040|solid|-1|false|||1|38|169|150|18|-1|-1|-1|0|-1|1||~29|2|10|c_form_element29|0|0|0|0|0|1px|#888888|none|-1|false|||1|127|139|94|20|-1|-1|-1|0|-1|1||~30|2|10|c_form_element30|0|0|0|0|0|1px|#888888|none|-1|false|||1|67|433|177|20|-1|-1|-1|0|-1|1||~31|2|1|sub price|0|0|0|0|0|2px|#000040|solid|-1|false|||1|234|170|50|18|-1|-1|-1|0|-1|1||disabled~32|2|7|adults|0|0|0|0|0|2px|#000040|solid|-1|false|||1|149|459|39|20|-1|-1|-1|0|-1|1||onchange=\"calculate_price()\"~33|2|10|c_form_element33|0|0|0|0|0|1px|#888888|none|-1|false|||1|85|461|55|20|-1|-1|-1|0|-1|1||~34|2|10|c_form_element34|0|0|0|0|0|1px|#888888|none|-1|false|||1|72|492|70|20|-1|-1|-1|0|-1|1||~35|2|7|children|0|0|0|0|0|2px|#000040|solid|-1|false|||1|149|493|39|18|-1|-1|-1|0|-1|1||onchange=\"calculate_price()\"~36|2|4|children yes|0|0|0|0|0|2px|#000040|solid|1|false|||1|150|338|20|20|-1|-1|-1|0|-1|1||onclick=\"{%id41}.innerHTML=\'Please make sure you have received the visa for the child as well.\'\"~37|2|4|children no|0|0|0|0|0|2px|#000040|solid|1|false|||1|150|364|20|20|-1|-1|-1|0|-1|1||onclick=\"{%id41}.innerHTML=\'\'\"~38|2|10|c_form_element38|0|0|0|0|0|1px|#888888|none|-1|false|||1|102|338|37|20|-1|-1|-1|0|-1|1||~39|2|10|c_form_element39|0|0|0|0|0|1px|#888888|none|-1|false|||1|107|367|31|20|-1|-1|-1|0|-1|1||~40|2|10|c_form_element40|0|0|0|0|0|1px|#888888|none|-1|false|||1|48|311|226|20|-1|-1|-1|0|-1|1||~41|2|10|c_form_element41|0|0|0|0|0|1px|#888888|none|-1|false|||1|54|393|242|33|-1|-1|-1|0|-1|1||~42|2|8|c_form_element42|5|0|0|0|0|2px|#888888|outset|-1|false|||1|66|570|50|20|-1|-1|-1|1|-1|1||~43|2|8|c_form_element43|1|1|1|0|0|2px|#888888|outset|-1|false|||1|159|569|50|20|-1|-1|-1|1|-1|1||~44|3|8|c_form_element44|8|0|0|0|0|2px|#888888|outset|-1|false|||1|112|286|50|20|-1|-1|-1|1|-1|1||~45|2|10|c_form_element45|0|0|0|0|0|1px|#888888|none|-1|false|||1|77|69|70|20|-1|-1|-1|0|-1|1||~46|2|-1|c_form_element46|0|0|0|0|0|0px 0px 0px 0px|rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136) rgb(136, 136, 136)|none none none none|-1|false|||1|442|345|150|101|-1|-1|-1|0|-1|1||~47|1|9|c_form_element47|0|0|0|0|0|0px|#888888|none|-1|false|||1|0|0|355|430|-1|-1|-1|1|-1|1|opacity:.5;|~48|2|9|c_form_element48|0|0|0|0|0|0px|#888888|none|-1|false|||1|0|2|355|596|-1|-1|-1|1|-1|1|opacity:.5;|~49|2|1|entrance|0|0|0|1|23|2px|#000040|solid|-1|false|||1|200|237|150|18|-1|-1|-1|0|-1|1||~50|2|1|departure|0|0|0|0|0|2px|#000040|solid|-1|false|||1|201|271|150|18|-1|-1|-1|0|-1|1||~51|2|10|c_form_element51|0|0|0|0|0|1px|#888888|none|-1|false|||1|199|172|35|20|-1|-1|-1|0|-1|1||~52|2|1|total price|0|0|0|1|0|1px|#888888|solid|-1|false|||1|149|524|70|18|-1|-1|-1|0|-1|1||~53|2|10|c_form_element53|0|0|0|0|0|1px|#888888|none|-1|false|||1|45|523|94|20|-1|-1|-1|0|-1|1||~54|2|8|c_form_element54|7|0|0|0|0|2px|#888888|outset|-1|false|||1|171|238|23|20|-1|-1|-1|1|49|1||~55|2|8|c_form_element55|7|0|0|0|0|2px|#888888|outset|-1|false|||1|171|272|23|20|-1|-1|-1|1|50|1||~56|3|10|c_form_element56|0|0|0|0|0|1px|#888888|none|-1|false|||1|35|22|129|24|-1|-1|-1|0|-1|1||~57|3|10|c_form_element57|0|0|0|0|0|1px|#888888|none|-1|false|||1|31|54|203|20|-1|-1|-1|0|-1|1||~58|3|10|c_form_element58|0|0|0|0|0|1px|#888888|none|-1|false|||1|31|75|203|20|-1|-1|-1|0|-1|1||~59|3|10|c_form_element59|0|0|0|0|0|1px|#888888|none|-1|false|||1|59|96|191|20|-1|-1|-1|0|-1|1||~60|3|10|c_form_element60|0|0|0|0|0|1px|#888888|none|-1|false|||1|44|116|203|20|-1|-1|-1|0|-1|1||~61|3|10|c_form_element61|0|0|0|0|0|1px|#888888|none|-1|false|||1|60|135|193|20|-1|-1|-1|0|-1|1||~62|3|10|c_form_element62|0|0|0|0|0|1px|#888888|none|-1|false|||1|35|155|184|20|-1|-1|-1|0|-1|1||~63|3|10|c_form_element63|0|0|0|0|0|1px|#888888|none|-1|false|||1|29|175|164|20|-1|-1|-1|0|-1|1||~64|3|10|c_form_element64|0|0|0|0|0|1px|#888888|none|-1|false|||1|50|196|148|20|-1|-1|-1|0|-1|1||~65|3|10|c_form_element65|0|0|0|0|0|1px|#888888|none|-1|false|||1|38|218|132|20|-1|-1|-1|0|-1|1||~66|3|10|c_form_element66|0|0|0|0|0|1px|#888888|none|-1|false|||1|46|252|123|20|-1|-1|-1|0|-1|1||~',0,'2008-05-20 23:22:01','admin','1|4|New elements group 1|1~','','function add_item(id,val,_obj) {\r\n	tmp=document.createElement(\"OPTION\");\r\n	tmp.value=id;\r\n	tmp.text=val;\r\n	_obj.options.add(tmp);	\r\n}\r\nfunction country_change(field) {\r\n	if (field.selectedIndex==0) { \r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		add_item(1,\'Bulgaria- tour 1\',{%id28});\r\n		add_item(2,\'Bulgaria- tour 2\',{%id28});\r\n		add_item(3,\'Bulgaria- tour 3\',{%id28});\r\n		{%id31}.value=\'500\';\r\n	} else\r\n	if (field.selectedIndex==1) { \r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		add_item(1,\'Spain- tour 1\',{%id28});\r\n		add_item(2,\'Spain- tour 2\',{%id28});\r\n		add_item(3,\'Spain- tour 3\',{%id28});\r\n		add_item(4,\'Spain- tour 4\',{%id28});\r\n		{%id31}.value=\'600\';\r\n	} else\r\n	if (field.selectedIndex==2) { \r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		add_item(1,\'Turkey- tour 1\',{%id28});\r\n		add_item(2,\'Turkey- tour 2\',{%id28});\r\n		{%id31}.value=\'350\';\r\n	} else\r\n	if (field.selectedIndex==3) { \r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		add_item(1,\'France- tour 1\',{%id28});\r\n		add_item(2,\'France- tour 2\',{%id28});\r\n		add_item(3,\'France- tour 3\',{%id28});\r\n		add_item(4,\'France- tour 4\',{%id28});\r\n		add_item(5,\'France- tour 5\',{%id28});\r\n		{%id31}.value=\'700\';\r\n	} else\r\n	if (field.selectedIndex==4) { \r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		add_item(1,\'Russia- tour 1\',{%id28});\r\n		add_item(2,\'Russia- tour 2\',{%id28});\r\n		{%id31}.value=\'400\';\r\n	} else {\r\n		while ({%id28}.options.length>0) {%id28}.remove(0);\r\n		add_item(0,\'-- Please select --\',{%id28});\r\n		{%id31}.value=\'\';\r\n		\r\n	}\r\n	calculate_price();\r\n}\r\nfunction calculate_price() {\r\n	if ({%id31}.value-0>0) {%id52}.value=({%id32}.selectedIndex+1)*({%id31}.value-0)+({%id35}.selectedIndex+1)*({%id31}.value-0)/2;\r\n		else {%id52}.value=\'\';\r\n}','','',0,2,'Admin joomla4','admin@joomla4','No reply email','','','Dear user,\n\n\nThank you for your interest in our project.\n\nAdmin\n\nP.S. Please do not reply to this message. It has been generated automatically.','');
/*!40000 ALTER TABLE `jos_smartformer_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_smartformer_settings`
--

DROP TABLE IF EXISTS `jos_smartformer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_smartformer_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `variable` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_smartformer_settings`
--

LOCK TABLES `jos_smartformer_settings` WRITE;
/*!40000 ALTER TABLE `jos_smartformer_settings` DISABLE KEYS */;
INSERT INTO `jos_smartformer_settings` VALUES (1,1,'validator1','The name is too long. Please specify a valid value','The name is too long. Please specify a valid value'),(2,1,'validator2','The address is too long. Please specify a valid value','The address is too long. Please specify a valid value'),(3,1,'validator3','Invalid email. Please specify a valid value','Invalid email. Please specify a valid value'),(4,1,'validator4','Please specify a correct integer value','Please specify a correct integer value'),(5,1,'validator5','Please specify a correct integer positive value','Please specify a correct integer positive value'),(6,1,'validator6','Please specify a correct string','Please specify a correct string'),(7,1,'validator7','Please specify a correct city name','Please specify a correct city name'),(8,1,'validator8','Please specify a correct zip/postal','Please specify a correct zip/postal'),(9,1,'validator9','Invalid US Zip. Please specify a valid value','Invalid US Zip. Please specify a valid value'),(10,1,'validator10','Please specify a correct phone number','Please specify a correct phone number'),(11,1,'validator11','Invalid value! PInvalid value! Please, provide a phone number in format XXX-XXX-XXXX, where X is a digit.lease, provide a phone number in format XXX-XXX-XXXX, where X is digit.','Invalid value! Please, provide a phone number in format XXX-XXX-XXXX, where X is a digit.'),(12,1,'validator12','The password should contain 6 to 12 symbols','The password should contain 6 to 12 symbols'),(13,1,'validator13','Please specify a correct credit card number','Please specify a correct credit card number'),(14,1,'validator14','Please specify a correct credit card CVV','Please specify a correct credit card CVV'),(15,1,'validator15','Please specify a correct flat','Please specify a correct flat'),(16,1,'validator16','Please specify a correct building','Please specify a correct building'),(17,1,'validator17','Please specify currency correctly','Please specify currency correctly'),(18,1,'validator18','Please specify a correct float number','Please specify a correct float number'),(19,1,'validator19','Please specify a valid URL','Please specify a valid URL'),(20,1,'validator20','Please specify a correct IP','Please specify a correct IP'),(21,1,'validator21','Invalid value! Please, provide a SSN in format XXX-XX-XXXX or XX-XXXXXXX, where X is a digit.','Invalid value! Please, provide a SSN in format XXX-XX-XXXX or XX-XXXXXXX, where X is a digit.'),(22,1,'validator22','Please provide a correct house number','Please provide a correct house number'),(23,1,'validator23','Invalid value! Field value should be in MM/DD/YYYY format.','Invalid value! Field value should be in MM/DD/YYYY format.'),(24,1,'validator24','Invalid value! Field value should be in MM/DD/YY format','Invalid value! Field value should be in MM/DD/YY format'),(25,1,'validator25','Invalid value! Field value should be in HH:MM format.','Invalid value! Field value should be in HH:MM format.'),(26,1,'secret_mandatory','You should enter the secret code','You should enter the secret code'),(27,1,'secret_incorrect','Secret code is incorrect. Please try again\r\n','Secret code is incorrect. Please try again'),(28,1,'form_inactive','<h3>The form you request is not available now.</h3><b>Please try again later.</b>','<h3>The form you request is not available now.</h3><b>Please try again later.</b>'),(29,1,'entries_not_match','The entries do not match','The entries do not match'),(30,1,'field_mandatory','You should select a value!','You should select a value!'),(31,1,'confirm','You should confirm your choice!','You should confirm your choice!'),(32,1,'field_mandatory2','The field is mandatory','The field is mandatory'),(33,1,'form_preview','Form Preview','Form Preview'),(34,1,'close_window','Close Window','Close Window'),(35,1,'print_preview','Print Preview','Print Preview');
/*!40000 ALTER TABLE `jos_smartformer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` VALUES ('mustangg',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (62,'Administrator','admin','talal.munir@avantgardepk.com','6072f6dfd1325a84890d02bc47af991a:pwIFRA4hi1dYfivJv9oAJbVado6vo2u3','Super Administrator',0,1,25,'2012-03-02 12:06:53','2012-05-02 11:45:28','',''),(63,'Administrator','brian','contact@focusedidea.com','03ea1ff34e08053d5a5e461275f80179:AZAtP5Fk0rVLV0I52UQyOCK2xq1iRl2i','Super Administrator',0,0,25,'2012-03-23 15:38:34','2012-05-09 20:46:03','','admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=-6\n\n'),(64,'Whitney Creel','whitney','w_creel@mustangenergyservices.com','eac3e41de0a294679fdf95034ad7358e:tNYs47qPzpr7AywOxh1yJlEknD2Ew0Va','Administrator',0,0,24,'2012-05-01 15:29:51','2012-05-01 16:18:22','','admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=-6\n\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
INSERT INTO `jos_weblinks` VALUES (1,2,0,'Joomla!','joomla','http://www.joomla.org','Home of Joomla!','2005-02-14 15:19:02',3,1,0,'0000-00-00 00:00:00',1,0,1,'target=0'),(2,2,0,'php.net','php','http://www.php.net','The language that Joomla! is developed in','2004-07-07 11:33:24',6,1,0,'0000-00-00 00:00:00',3,0,1,''),(3,2,0,'MySQL','mysql','http://www.mysql.com','The database that Joomla! uses','2004-07-07 10:18:31',1,1,0,'0000-00-00 00:00:00',5,0,1,''),(4,2,0,'OpenSourceMatters','opensourcematters','http://www.opensourcematters.org','Home of OSM','2005-02-14 15:19:02',11,1,0,'0000-00-00 00:00:00',2,0,1,'target=0'),(5,2,0,'Joomla! - Forums','joomla-forums','http://forum.joomla.org','Joomla! Forums','2005-02-14 15:19:02',4,1,0,'0000-00-00 00:00:00',4,0,1,'target=0'),(6,2,0,'Ohloh Tracking of Joomla!','ohloh-tracking-of-joomla','http://www.ohloh.net/projects/20','Objective reports from Ohloh about Joomla\'s development activity. Joomla! has some star developers with serious kudos.','2007-07-19 09:28:31',1,1,0,'0000-00-00 00:00:00',6,0,1,'target=0\n\n');
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ztautolink`
--

DROP TABLE IF EXISTS `jos_ztautolink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ztautolink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `target` tinyint(4) NOT NULL DEFAULT '1',
  `nofollow` tinyint(4) NOT NULL,
  `priority` smallint(6) NOT NULL,
  `catid` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `url_type` tinyint(4) NOT NULL,
  `link_color` varchar(9) NOT NULL,
  `custom_css` varchar(255) DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `occurrence` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ztautolink`
--

LOCK TABLES `jos_ztautolink` WRITE;
/*!40000 ALTER TABLE `jos_ztautolink` DISABLE KEYS */;
INSERT INTO `jos_ztautolink` VALUES (14,'contact us',1,'Contact Mustang Energy Services',0,0,1,0,'index.php?option=com_contact&view=category&catid=12',0,'#616161','',10,0),(15,'contact the office',1,'Contact Mustang Energy Services',0,0,1,0,'index.php?option=com_contact&view=category&catid=12',0,'#616161','text-decoration: underline',5,0),(20,'pit liners',0,'Pit Liners',0,0,1,0,'index.php?option=com_content&view=article&id=56',0,'','text-decoration: underline',5,0);
/*!40000 ALTER TABLE `jos_ztautolink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-10 10:42:37
