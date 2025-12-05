#!/bin/bash

sudo apt install openjdk-11-jre-headless

if [ "$(java -version | grep not)" != "not" ]
then
   echo "java installed"
else
   echo "java not installed"
fi

if [ "$(java -version 2>&1 | grep -oP '\d+' | head -1)" -lt "11" ]
then
   echo "Version lower than 11 installed"
else
   echo "Version 11 or higher installed"
fi

