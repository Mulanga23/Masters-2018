#!/bin/bash
# setup.sh
# a bash script to setup the environment for the project

# install pip and virtual
sudo apt-get install python3-pip -y

# create the virtual environment in the project root
pip install virtualenv
virtualenv -p python3 cv_env

#get into the virtual environment
source cv_env/bin/activate
pip install -r requirements.txt
pip install ipykernel
ipython kernel install --user --name=cv_env

