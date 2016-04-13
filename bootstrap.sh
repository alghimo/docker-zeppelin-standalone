#!/bin/bash

rm /tmp/*.pid

CMD=${1:-"exit 0"}
if [[ "$CMD" == "-d" ]];
then
	/zeppelin/bin/zeppelin.sh
else
    /zeppelin/bin/zeppelin-daemon.sh start
	/bin/bash -c "$*"
fi
