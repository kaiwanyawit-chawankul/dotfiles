#!/usr/bin/env bash

sudo su
cd Source

for dir in */; do
    echo "-------------"
    if ! dotnet restore "$dir"; then
        echo "restore not complete for $dir"
        exit 1
    fi
    if ! dotnet build "$dir" --no-restore; then
        echo "build not complete for $dir"
        exit 1
    fi
    echo "-------------"
done
