#! /bin/bash

if [ -z "$1" ]; then
    max=1
else
    max=$1
fi
echo "Will run $max tests"

for i in $(seq 1 $max); do
    echo "Test $i"
    if [ -x "$(command -v curl)" ]; then
        curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
    else
        if [ -x "$(command -v wget)" ]; then
            wget -qO - https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
        else
            echo "Couln't found curl or wget command"
        fi
    fi
done
