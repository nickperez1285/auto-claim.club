<?php
 
//Reduce errors
error_reporting(~E_WARNING);
 
//$remote_ip='192.168.2.3';
$remote_port='32000';
//$buf='100000000000';
//Create a UDP socket
if(!($sock = socket_create(AF_INET, SOCK_DGRAM, 0)))
{
    $errorcode = socket_last_error();
    $errormsg = socket_strerror($errorcode);
     
    die("Couldn't create socket: [$errorcode] $errormsg \n");
}
 
echo "Socket created \n";
 
// Bind the source address
if( !socket_bind($sock, "0.0.0.0" , 32000) )
{
    $errorcode = socket_last_error();
    $errormsg = socket_strerror($errorcode);
     
    die("Could not bind socket : [$errorcode] $errormsg \n");
}
 
echo "Socket bind OK \n";
 
//Do some communication, this loop can handle multiple clients
while(1)
{
   // echo "Waiting for data ... \n";
    //Send back the data to the client
    socket_sendto($sock, $buf, 100 , 0 , '192.168.7.2', '32000');
    //Receive some data
   $r = socket_recvfrom($sock, $buf, 512, 0, $remote_ip, $remote_port);
   // echo "$remote_ip : $remote_port -- " . $buf;
    // echo $r;
     printf( $buf);
     if($buf!=NULL){
            break;

     }
}
$saveName = 'accidently.JPG';
$ch=curl_init('192.168.7.2/Support/accidently.JPG');
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$raw=curl_exec($ch);
curl_close($ch);
if(file_exists($saveName)){
    unlink($saveName);
}
$fp=fopen($saveName,'x');
fwrite($fp, $raw);
fclose($fp);


 //add curl here
socket_close($sock);