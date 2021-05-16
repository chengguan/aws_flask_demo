#########################################################
# 13th May 2021
To build uwsgi-nginx-flask image:
sudo docker run -p 80:80 -t <image name>

To run the image:
sudo docker run -d -p 80:80 -t <image name>

TODO:
- add docker compose script


#########################################################
#
# aws_flask_demo

Install system packages:
- nginx
- python3
- pip3

sudo apt update
sudo apt install python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools
pip3 install wheel
pip3 install uwsgi flask qrcode Pillow


Install python modules:
- Flask
- Pillow
- qrcode

Project setup:
./copy_service.sh
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled
sudo nginx -t # test for syntax errors

sudo systemctl start myproject
sudo systemctl enable myproject

sudo systemctl restart nginx
sudo systemctl restart myflask # restart application

