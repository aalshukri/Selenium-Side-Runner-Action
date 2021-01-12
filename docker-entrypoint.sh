#!/bin/sh
echo "Starting the Selenium Side Runner Action"

sleep 5

mkdir /out

selenium-side-runner -s http://chromedriver:4444 --output-directory /out /sides/*.side


if [ -n "${INPUT_SIDE-DIRECTORY}" ]; then
  echo "::debug::Input side directory provided."
  echo "::debug::Using \"${INPUT_SIDE-DIRECTORY}\" as a side source file directory"
elif
  echo "::debug::Input side directory not provided."  
fi 

if [ -n "${INPUT_OUTPUT-DIRECTORY}" ]; then
  echo "::debug::Input output directory provided."
  echo "::debug::Using \"${INPUT_OUTPUT-DIRECTORY}\" as an output directory"
elif
  echo "::debug::Input output directory not provided."  
fi 

