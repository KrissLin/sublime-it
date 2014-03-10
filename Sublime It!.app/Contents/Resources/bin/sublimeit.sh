#!/bin/bash
PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:~/bin export PATH

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ -z "$@" ]]; then
	echo "SUCCESS"
	exit 0
fi

function try()
{
CMD=$(command -v "$1")

if [[ -z "$CMD" ]]; then
	:
else
	NEWWIN=
	if [[ "$CMDDOWN" -eq 1 ]]; then
		NEWWIN="-n"
	else
		NEWWIN="-a"
	fi
	"$CMD" "$NEWWIN" "${ARGS[@]}"
	echo SUCCESS
	exit 0
fi
}

ARGS=("$@")
CMDDOWN=0
CMDDOWN=`"$DIR"/checkModifierKeys shift` 

try "subl"
try "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
try "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
try "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl"
