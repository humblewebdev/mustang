<?php
/**
* @package ZT Ztautolink Component for Joomla! 1.5
* @author http://www.ZooTemplate.com
* @copyright (C) 2011- ZooTemplate.com
* @license PHP files are GNU/GPL
**/

// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );


class ZtautolinksControllerKwordsImport extends ZtautolinksController
{
	/**
	 * constructor (registers additional tasks to methods)
	 * @return void
	 */
	function __construct()
	{
		parent::__construct();
	}
	function import()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$this->setRedirect('index.php?option=com_ztautolink&view=kwordsimport&controller=kwordsimport');

		// Initialize variables
		$csvpath		= JRequest::getVar('csvpath', null, 'files', 'array' );
		
		$file_parts = explode('.', $csvpath['name']);
		if( $file_parts[count($file_parts)-1]=='csv' ){
			$model = $this->getModel('kwordsimport');
			
			$row = 0;
			$data_sample = array("id"=>0, "word" => '', "published"=>0, "link_title"=>'', "target"=>0, "nofollow"=>0, "priority"=>0, "catid"=>0, "url"=>'', "url_type"=>0, "link_color"=>'', "custom_css"=>'', "limit"=>0, "occurrence"=>0 ); 
			
			if (($handle = fopen($csvpath['tmp_name'], "r")) !== FALSE) {
				while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
					if($row == 0){ 
						$row++; 
						continue; 
					}
					
					$data_sample["word"] 		= $data[0];
					$data_sample["published"] 	= $data[1];
					$data_sample["link_title"] 	= $data[2];
					$data_sample["target"] 		= $data[3];
					$data_sample["nofollow"] 	= $data[4];
					$data_sample["priority"] 	= $data[5];
					$data_sample["catid"] 		= $data[6];
					$data_sample["url"] 		= $data[7];
					$data_sample["url_type"] 	= $data[8];
					$data_sample["link_color"] 	= $data[9];
					$data_sample["custom_css"] 	= $data[10];
					$data_sample["limit"] 		= $data[11];
					$data_sample["occurrence"] 	= $data[12];
					
					$model->store($data_sample);
					$row++;
				}
				fclose($handle);
			}
			$row = $row - 1;
			$this->setMessage( JText::sprintf( $row.' keyword(s) imported') );
		}
		else{
			return JError::raiseWarning( 500, JText::_( 'Please import data from .csv file!!!' ) );
		}
	}
	
	function export()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		$model = $this->getModel('kwordsimport');
		$data = $model->export();
		
		$tmpdir = uniqid('ztautolink');
		$path = JPATH_COMPONENT_ADMINISTRATOR.DS.'export'.DS.$tmpdir;
		if (!JFolder::create($path, 0777))
		{
			JError::raiseWarning(500, JText::_('Could not create directory ').$path);
			return $this->setRedirect('index.php?option=com_ztautolink&view=kwordsimport&controller=kwordsimport');
		}
		$real_filename = 'keywords_'.date("m.d.y_h.m.s.a").'.csv';
		$filename = JPATH_COMPONENT_ADMINISTRATOR.DS.'export'.DS.$tmpdir.DS.$real_filename;
		if( !($handle = fopen($filename, 'w')) ){
			return JError::raiseWarning( 500, JText::_('Exporting fail!!!' ));
		}
		
		$line = array("word", "published", "link_title", "target", "nofollow", "priority", "catid", "url", "url_type", "link_color", "custom_css", "limit", "occurence");
		if(!fputcsv($handle, $line)){
			return JError::raiseWarning( 500, JText::_('Exporting fail!!!' ));
		}
		$line = array();
		
		for($i=0; $i<count($data); $i++){
			for($j=1; $j<count($data[$i]); $j++){
				$line[] = $data[$i][$j];
			}
			
			if(!fputcsv($handle, $line)){
				return JError::raiseWarning( 500, JText::_('Exporting fail!!!' ));
			}
			$line = array();
		}
		fclose($handle);
		$this->download($filename);
	}
	
	function download($filename){
		// force download dialog
		header("Content-Type: application/force-download");
		header("Content-Type: application/octet-stream");
		header("Content-Disposition: attachment; filename=".basename($filename));
        $contents = fread(fopen($filename, "rb"), filesize($filename));
        echo $contents;
        exit;
	}
 
}