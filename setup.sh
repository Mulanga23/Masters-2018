#!/bin/bash

#install pip
sudo apt-get install python3-pip -y

#install virtualenv and create your virtual enc of choice

pip install virtualenv
virtualenv -p python3 cv_env

#Get into the virtualenv
source cv_env/bin/activate
pip install -r requirements.txt
pip install ipykernel
ipython kernel install --user --name=cv_env
