#!/bin/bash

sudo apt update
sudo apt install -y default-jre
java_version=$(java -version 2>&1 >/dev/null | grep "java version\|openjdk version" | awk ´{print substr($3,2,2)}´)

if ["$java_version" == ""]
then
  echo Installing java has failed. No Java version found.
elif ["$java_version" == "1."]
then
  echo An old version of Java installation found.
elif ["$java_version" -ge 11]
then
  echo Java version 11 or greater installed successfully. testing aws sync here.
fi
