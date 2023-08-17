#!/bin/bash
# rm .env
# tocuh .env
# chmod -R 777 .env
# echo "UID=$UID" >> .env
# echo "GID=" id -g >> .env
# id -g >> .env
cat .env
sudo podman-compose up --build