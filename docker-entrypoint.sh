#!/bin/sh
echo "Starting the Selenium Side Runner Action"

sleep 5

mkdir /out

selenium-side-runner -s http://chromedriver:4444 --output-directory /out /sides/*.side

ls -l


if [ -z "${INPUT_SIDE-DIRECTORY}" ]; then
  echo "::debug::Input side directory provided."
  echo "::debug::Using \"${INPUT_SIDE-DIRECTORY}\" as a side source file directory"
fi 

if [ -z "${INPUT_OUTPUT-DIRECTORY}" ]; then
  echo "::debug::Input output directory provided."
  echo "::debug::Using \"${INPUT_OUTPUT-DIRECTORY}\" as an output directory"
fi 

