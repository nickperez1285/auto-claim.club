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
$s = json_encode($s, true);
//print_r($json_encode($a);
print_r($s);



 ?>