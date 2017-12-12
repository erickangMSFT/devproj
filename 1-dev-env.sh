#!/bin/bash

# Shortcut: register Run Selected Text in Active Terminal to F6

# init dev / troubleshooting environment
clear
docker-compose up -d

# wait sql server to finish the initial bootstrapping
sleep 15

# run database test
clear
docker exec -ti dbtest sh -c "cd /opt/slacker-test && slacker"

#optional: view test spec
clear
docker exec -ti dbtest sh -c "cat /opt/slacker-test//spec/website/insertCustomerOrder.rb"


# reset
docker-compose down