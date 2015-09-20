#!/bin/bash
python theta/pyTHETA.py startSession
python theta/pyTHETA.py takePicture SID_0001
sleep 3
python theta/pyTHETA.py latestFileUri 
python theta/pyTHETA.py getLatestImage
cp *.JPG /var/lib/cloud9/Support/accidently.JPG
rm *.JPG
