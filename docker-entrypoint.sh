#!/bin/sh
echo "Starting the Selenium Side Runner Action"

sleep 5

selenium-side-runner -s http://chromedriver:4444 --output-directory /out /sides/*.side

ls -l

ls /out