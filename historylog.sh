#!/bin/bash

########################################################################
#                                                                      #
# Copyright(C) 2019 - LBS - (Single person developer.)                 #
# Mon Mar 23 22:58:54 CET 2020                                         #
# Autor: Leonid Burmistrov                                             #
#                                                                      #
# File description:                                                    #
#                                                                      #
# Input paramete:                                                      #
#                                                                      #
# This software is provided "as is" without any warranty.              #
#                                                                      #
########################################################################

LC_TIME=en_US.UTF-8
LANG=en_US.UTF-8

function historylog_sh {
    historylog=`date +%d.%m.%Y_history.log`
    cp ~/.bash_history $dataHome/$historylog
}

function printHelp {
    echo " --> ERROR in input arguments "
    echo " -d  : default"
    echo " -p2 : p2"
}

sourceHome=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
dataHome=$sourceHome/data/

if [ $# -eq 0 ]; then    
    printHelp
else
    if [ "$1" = "-d" ]; then
	historylog_sh
    elif [ "$1" = "-p2" ]; then
        printHelp
    elif [ "$1" = "-h" ]; then
        printHelp
    else
        printHelp
    fi
fi
