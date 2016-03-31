#!/bin/bash
 wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
 sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
 sudo apt-get update
 sudo apt-get -y install xvfb
 sudo apt-get -y install x11vnc
 sudo apt-get -y install libxss1 libappindicator1 libindicator7
 sudo apt-get -y install google-chrome-stable
 sudo apt-get install unzip;
 wget http://chromedriver.storage.googleapis.com/LATEST_RELEASE
 latest=$(cat LATEST_RELEASE)
 wget http://chromedriver.storage.googleapis.com/$latest/chromedriver_linux64.zip
 sudo unzip chromedriver_linux64.zip