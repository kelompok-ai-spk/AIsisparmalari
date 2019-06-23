<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
	$qry='select id from tb_gejala where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	$rule=array(
		array("G001","G002","G003","G010","G013","G020"), #malaria tertiana
		array("G001","G002","G004","G005","G010","G013","G016","G020"), #malaria quartana
		array("G001","G002","G005","G006","G007","G008","G009","G011","G012","G013","G014","G015","G017","G018","G020"), #malaria tropika &	
		array("G001","G003","G005","G006","G013","G016","G020"), #malaria ovale
		array("G007","G008","G009","G011","G012","G015","G017","G018"), #&
		array("G001","G002","G005","G006","G013","G014","G020"), #&
		array("G001","G002","G004","G011","G012","G017")); #&
		
	$status=false;
	for ($i=0; $i <7 ; $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
	
	if($status==true){
		while ($d=mysqli_fetch_assoc($data)) {
			$id=$d['id'];
		}
		$cari_penyakit="select * from tb_penyakit where id=$id";
		$db=mysqli_query($kon,$cari_penyakit);
		while ($d=mysqli_fetch_assoc($db)) {
			$penyakit=$d['penyakit'];
			$info=$d['info'];
			$solusi=$d['solusi'];
			include 'hasil.php';
		}

	}else{
				include 'error.php';
	}
}
?>
