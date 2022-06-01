#!/bin/bash
echo Which function do you want to use?
echo 1: nmap
echo 2: nslookup
read command

if [ "$command" == "1" ]
then
    echo Please enter IP to nmap
    read ip
    echo Ports of  $ip will be scanned
    echo 1: Scan for open Ports
    echo 2: Scan for all Ports
    read option
    port=1

    if [ "$option" == "1" ] 
    then
        nmap "$ip"
    fi


    if [ "$option" == "2" ] 
    then
        while true
        do
        nmap -p "$port" "$ip"
        ((port++))
        done
    fi
fi

if [ "$command" == "2" ]
then
echo For wich domain do you want to find the ip.
read domain

nslookup "$domain"
fi


