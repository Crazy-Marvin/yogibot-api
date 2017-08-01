<?php
	header("Access-Control-Allow-Origin: *");
	ini_set('memory_limit','512M');
	error_reporting(E_ALL);
	ini_set("display_errors", 0);
	define('DB_USER','putyourdbuserhere');
	define('DB_PASSWORD','putyourdbpasswordhere');
	define('DB_NAME','putyourdbnamehere');
	define('DB_HOST','localhost');
	define('DB_PORT','5432');
	$iConnection = mysql_connect(MYSQL_DB_HOST,MYSQL_DB_USER,MYSQL_DB_PASSWORD);
	$iLink = pg_connect("host=".DB_HOST." port=".DB_PORT." dbname=".DB_NAME." user=".DB_USER." password=".DB_PASSWORD);
	switch($_REQUEST['command'])
	{
		case'filter_by_lang':
			$aResults = array();
			$sLang   = filter_var ($_REQUEST['lng'],FILTER_SANITIZE_STRING);
			$sSQL = "SELECT * FROM yogi WHERE language='".addslashes($sLang)."' ".(isset($_REQUEST['cnt'])?' LIMIT '.(int)$_REQUEST['cnt']:' LIMIT 1000');
			$hRes = pg_query($iLink,$sSQL);
			while($aRow = pg_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults);
			header('Content-type: application/json');
			echo($aJSONAnswer);
			exit();
		break;
		case'get_random_one':
			$aResults = $aSays = array();
			$sLang   = filter_var ($_REQUEST['lng'],FILTER_SANITIZE_STRING);
			$iMaxCnt = isset($_REQUEST['cnt'])?(int)$_REQUEST['cnt']:1;
			$sSQL = "SELECT * FROM yogi  ".(isset($_REQUEST['lng'])?"WHERE language='".addslashes($sLang)."'":'');
			$hRes = pg_query($iLink,$sSQL);
			while($aRow = pg_fetch_assoc($hRes))
			{
				$aSays[] = $aRow;
			}
			$aRandoms = getRandomArray($iMaxCnt);
			foreach($aRandoms as $iKey=>$iVal)
			{
				$aResults[] = $aSays[$iVal];
			}
			$aJSONAnswer = json_encode($aResults);
			header('Content-type: application/json');
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
					$hRes = pg_query($iLink,$sSQL);
					$aRow = pg_fetch_assoc($hRes);
					$aResults[] = $aRow;
				}
				$aJSONAnswer = json_encode($aResults);
				header('Content-type: application/json');
				echo($aJSONAnswer);
				exit();
			}
			$sSQL = "SELECT * FROM yogi WHERE number='".(int)$iID."'";
			$hRes = pg_query($iLink,$sSQL);
			$aRow = pg_fetch_assoc($hRes);
			$aJSONAnswer = json_encode(isset($aRow['number'])?$aRow:array());
			header('Content-type: application/json');
			echo($aJSONAnswer);
			exit();
		break;
		case'all':
			$aResults = array();
			$sSQL = "SELECT * FROM yogi ";
			$hRes = pg_query($iLink,$sSQL);
			while($aRow = pg_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults);
			header('Content-type: application/json');
			echo($aJSONAnswer);
			exit();
		break;
		case'get_saying_of_the_day':
			$sLang   = filter_var ($_REQUEST['lng'],FILTER_SANITIZE_STRING);
			$sSQL = "SELECT * FROM yogi WHERE sotd='t' ".(isset($_REQUEST['lng'])?" and language='".addslashes($sLang)."'":'');
			$hRes = pg_query($iLink,$sSQL);
			while($aRow = pg_fetch_assoc($hRes))
			{
				$aResults[] = $aRow;
			}
			$aJSONAnswer = json_encode($aResults);
			header('Content-type: application/json');
			echo($aJSONAnswer);
			exit();
		break;
	}
	function getRandomArray($iMaxIndex)
	{
		$aRandom = array();
		$iCounter = 0;
		do
		{
			$iValue = rand(1,$iMaxIndex);
			if(in_array($iValue,$aRandom))
			{
				continue;
			}
			else
			{
				$aRandom[$iCounter] = $iValue;
				$iCounter++;
			}
			
		}while($iCounter!=($iMaxIndex));
		return $aRandom; 
	}
?>
