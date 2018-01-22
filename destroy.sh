#!/usr/bin/env bash

set -e

read -p "This will delete all data in your devstack. Would you like to proceed? [y/n] " -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo
    if [[ "$OSTYPE" == "darwin"* ]]; then
        set +e
        docker-sync stop
        docker-sync clean
        set -e
    fi
    sudo -E docker-compose down -v
fi
