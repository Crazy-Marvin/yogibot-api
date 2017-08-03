<?php
	header("Access-Control-Allow-Origin: *");
	header('Access-Control-Allow-Methods: GET');
	header("Access-Control-Allow-Headers: X-Requested-With");
	ini_set('memory_limit','512M');
	error_reporting(E_ALL);
	ini_set("display_errors", 0);
	define('DB_USER','');
	define('DB_PASSWORD','');
	define('DB_NAME','');
	define('DB_HOST','localhost');
	$iConnection = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD);
	mysqli_select_db($iConnection,DB_NAME);
	mysqli_query($iConnection,"SET NAMES utf8");
	switch($_REQUEST['command'])
	{
		case'filter_by_lang':
			$aResults = array();
			$sLang   = filter_var ($_REQUEST['lng'],FILTER_SANITIZE_STRING);
			$sSQL = "SELECT * FROM yogi WHERE language='".addslashes($sLang)."' ".(isset($_REQUEST['cnt'])?' LIMIT '.(int)$_REQUEST['cnt']:' LIMIT 1000');
			$hRes = mysqli_query($iConnection,$sSQL);
			while($aRow = mysqli_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults,JSON_UNESCAPED_UNICODE);
			header('Content-Type: application/json; charset=utf-8');
			echo($aJSONAnswer);
			exit();
		break;
		case'get_random_one':
			$aResults = $aSays = array();
			$sLang   = filter_var ($_REQUEST['lng'],FILTER_SANITIZE_STRING);
			$iMaxCnt = isset($_REQUEST['cnt'])?(int)$_REQUEST['cnt']:1;
			$sSQL = "SELECT * FROM yogi  ".(isset($_REQUEST['lng'])?"WHERE language='".addslashes($sLang)."'":'').' ORDER BY rand() LIMIT '.$iMaxCnt;
			$hRes = mysqli_query($iConnection,$sSQL);
			while($aRow = mysqli_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults,JSON_UNESCAPED_UNICODE);
			header('Content-Type: application/json; charset=utf-8');
			echo($aJSONAnswer);
			exit();
		break;
		case'get_by_id':
			$aResults = array();
			$iID = filter_var ($_REQUEST['id'],FILTER_SANITIZE_STRING);
			if(strpos($iID,',')!==false)
			{
				$aResults = array();
				$sIDs = $_REQUEST['id'];
				$aIDs = explode(',',$sIDs);
				foreach($aIDs as $iKey=>$iVal)
				{
					$sSQL = "SELECT * FROM yogi WHERE number='".(int)$iVal."' ";
					$hRes = mysqli_query($iConnection,$sSQL);
					$aRow = mysqli_fetch_assoc($hRes);
					$aResults[] = $aRow;
				}
				$aJSONAnswer = json_encode($aResults,JSON_UNESCAPED_UNICODE);
				header('Content-Type: application/json; charset=utf-8');
				echo($aJSONAnswer);
				exit();
			}
			$sSQL = "SELECT * FROM yogi WHERE number='".(int)$iID."'";
			$hRes = mysqli_query($iConnection,$sSQL);
			$aRow = mysqli_fetch_assoc($hRes);
			$aJSONAnswer = json_encode(isset($aRow['number'])?$aRow:array(),JSON_UNESCAPED_UNICODE);
			header('Content-Type: application/json; charset=utf-8');
			echo($aJSONAnswer);
			exit();
		break;
		case'all':
			$aResults = array();
			$sSQL = "SELECT * FROM yogi ";
			$hRes = mysqli_query($iConnection,$sSQL);
			while($aRow = mysqli_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults,JSON_UNESCAPED_UNICODE);
			header('Content-Type: application/json; charset=utf-8');
			echo($aJSONAnswer);
			exit();
		break;
	}
?>
