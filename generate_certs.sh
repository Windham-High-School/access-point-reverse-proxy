#!/bin/bash

mkdir -p certs
openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout certs/server.key -out certs/server.pem -subj "/C=US/ST=New Hampshire/L=Windham"
