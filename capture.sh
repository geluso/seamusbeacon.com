#!/bin/bash

delay=$1

while true
do
  filename="screencaptures/$(date).png"
  echo $filename
  screencapture "$filename"
  scp "$filename" "$SSH_SEAMUS_BEACON":seamusbeacon.com/images
  sleep $delay
done
