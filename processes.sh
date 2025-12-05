#!/bin/bash

if [ "$1" == "CPU" ]
then
   ps aux --sort=%cpu | grep luna | head -$2
else
   ps aux --sort=%mem | grep luna | head -$2
fi

