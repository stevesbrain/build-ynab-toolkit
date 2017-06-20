#!/bin/bash
echo "Please wait while your image is built"
IMAGEID=$(sudo docker build ./ | grep -i success | cut -d' ' -f3)
sudo docker run -v /root/toolkit-for-ynab $IMAGEID /bin/sh
CONTAINERID=$(sudo docker ps -l | sed -n 2p | cut -d' ' -f1)
echo "Copying the build now"
sudo docker cp $CONTAINERID:/root/toolkit-for-ynab/output .
echo "Done"
