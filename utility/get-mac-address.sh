#! /bin/bash

ifconfig en1 | awk '/ether/{print $2}'