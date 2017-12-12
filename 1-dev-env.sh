#!/bin/bash

# Shortcut: register Run Selected Text in Active Terminal to F6

# init dev environment
clear
docker-compose up -d

# wait sql server to finish the initial bootstrapping
sleep 15

# run database test
clear
docker exec -ti dbtest sh -c "cd /opt/slacker-test && slacker"


# reset
docker-compose down