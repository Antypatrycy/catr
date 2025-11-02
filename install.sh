#!/usr/bin/env bash
set -euo pipefail

if [[ `whoami` != "root" ]];then
	echo "This script needs to be ran as root"
	exit 1
fi

if [[ ! -f catr ]];then
	echo "Didn't find a copy of catr in $PWD"
	exit 1
fi

if [[ -e /usr/bin/catr ]];then
	echo "/usr/bin/catr alredy exits"
fi

cp catr /usr/bin/catr
chmod +x /usr/bin/catr
