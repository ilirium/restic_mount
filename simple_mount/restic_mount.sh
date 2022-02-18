#!/bin/bash

read -sp 'Enter restic repository password: ' resticpw
export RESTIC_PASSWORD=$resticpw
docker-compose up --build