 <?php 
 //OBD ID - R9U-TMPA

//add if set, check for null
//$_POST["uuid"];
//$_POST["id"];
//$_POST["timestamp"];
//$_POST["location"];
//$_POST["links"];
 /*
 {
  "collision" : {
    "id" : "e43ff87d-bb58-42da-998e-d7f10a3f7a64",
    "timestamp" : "2015-07-05T22:16:18+00:00",
    "location" : {
      "latitude" : 32.766392,
      "longitude" : -96.917009
    },
    "links" : {
      "self" : "https://safety.vin.li/api/v1/collisions/e43ff87d-bb58-42da-998e-d7f10a3f7a64"
    }
  }
}
*/
//$json= $_POST["iphone_json"];
//$ar = json_decode($json);
//$ar->
/*
$s = '[
 {
  "collision" : {
    "id" : "e43ff87d-bb58-42da-998e-d7f10a3f7a64",
    "timestamp" : "2015-07-05T22:16:18+00:00",
    "location" : {
      "latitude" : 32.766392,
      "longitude" : -96.917009
    },
    "links" : {
      "self" : "https://safety.vin.li/api/v1/collisions/e43ff87d-bb58-42da-998e-d7f10a3f7a64"
    }
  }
}
]';
*/
   class Collision {
      public $id = "";
      public $timestamp  = "";
      public $location_longitude = "";
   	  public $location_latitude=""; 
      public $map_image="";
      public $crash_image0="";
      public $crash_image1="";
      public $crash_image2="";



   }
	
   $e = new Collision();
   $e->id = ""; 
   $e->timestamp="2015-07-05T22:16:18+00:00";
   $e->location_longitude="-96.917009";
   $e->location_latitude="32.766392";
   $e->map_image="https://utility.arcgisonline.com/arcgis/rest/directories/arcgisoutput/Utilities/PrintingTools_GPServer/x_____xZdjJY4DAWG0eMdLBCePnfA..x_____x_ags_3e54ea4de3294601bd1a69748057bbfb.png";
   $e->crash_image0="http://192.168.2.3/xampp/vinli/accidently.JPG";
  $accidentlyJPG="http://192.168.2.3/xampp/vinli/accidently.JPG";
   //$e->crash_image2="http://disaster-accident.com/highresolution/l_069.jpg"
   //echo json_encode($e);
  echo $accidentlyJPG;


//$as = json_encode($s, true);
//print_r($json_encode($a);
//print_r($as);




 ?>