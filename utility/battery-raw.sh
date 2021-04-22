#! /bin/bash

ioreg -brc AppleSmartBattery | grep Capacity
