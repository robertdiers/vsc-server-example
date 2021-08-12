#! /bin/bash

# extend VSC server image
cd vsc
docker build --tag code-server-example:1.0.0 .
cd ..

# create required folders for vsc-server config
mkdir -p ~/.config

# start all containers and give user id
EXAMPLE_UID=${UID} EXAMPLE_GID=${GID} docker-compose -p vsc-server-example up --detach
