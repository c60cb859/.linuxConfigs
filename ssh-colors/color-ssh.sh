#!/bin/bash
trap "color-term" INT EXIT
if [[ "$*" =~ "prod" ]]; then
	color-term prod
elif [[ "$*" =~ "dev" ]]; then
	color-term dev
else
	color-term other
fi
ssh $*
