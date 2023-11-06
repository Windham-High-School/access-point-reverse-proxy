## Setup Reference:
  * https://fwhibbit.es/automatic-access-point-with-docker-and-raspberry-pi-zero-w


## Setup Raspberry Pi
  * Install Raspberry Pi OS Lite
  * Add empty `ssh` to bootfs
  * Add `userconf.txt to bootfs with username:encrypted-password
    * echo "mypassword" | openssl passwd -6 -stdin

## Start up Raspberry Pi
  * ssh username@ip-address

## Install Docker
  * curl -sSL https://get.docker.com | sh

## Add the permissions to the current user to run Docker commands
  * sudo gpasswd -a $USER docker

## Checkout the code
  * mkdir code && cd code
  * git clone https://github.com/Windham-High-School/access-point-reverse-proxy.git

## Set things up
  * cd code/access-point-reverse-proxy
  * ./generate_certs.sh
  * vi .env
    * set API_SECRET

## Start so that it will restart on device restart
  * docker compose up -d

