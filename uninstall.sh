#!/usr/bin/env bash
set -euo pipefail

if [[ `whoami` != "root" ]];then
	echo "This script needs to be ran as root"
	exit 1
fi

rm /usr/bin/catr
