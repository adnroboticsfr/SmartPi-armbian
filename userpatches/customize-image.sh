#!/bin/bash

sudo apt update 
sudo apt upgrade
git clone https://github.com/ADNroboticsfr/smartpi-gpio.git
cd smartpi-gpio
sudo python3 setup.py sdist bdist_wheel
sudo pip3 install dist/smartpi_gpio-1.0.0-py3-none-any.whl
sudo activate_interfaces.sh
sudo apt install ros-desktop-full
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
sudo apt install python3-rosinstall-generator
sudo apt install python3-rosinstall
sudo apt install python3-wstool
sudo rosdep init
sudo apt-get install -y python3-dev python3-pip libjpeg-dev zlib1g-dev libtiff-dev
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.old
sudo pip3 install face_recognition numpy
sudo pip3 install --upgrade opencv-python opencv-contrib-python