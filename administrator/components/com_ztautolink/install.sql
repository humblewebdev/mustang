
CREATE TABLE IF NOT EXISTS `#__ztautolink` (
  `id` int(11) NOT NULL auto_increment,
  `word` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link_title` varchar(255) default NULL,
  `target` tinyint(4) NOT NULL default '1',
  `nofollow` tinyint(4) NOT NULL,
  `priority` smallint(6) NOT NULL,
  `catid` tinyint(4) NOT NULL default '0',
  `url` varchar(255) NOT NULL,
  `url_type` tinyint(4) NOT NULL,
  `link_color` varchar(9) NOT NULL,
  `custom_css` varchar(255) default NULL,
  `limit` int(11) NOT NULL default '0',
  `occurrence` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;
