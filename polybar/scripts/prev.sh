#! /usr/bin/env bash

if [ "$(pgrep cmus)" != ''  ]; then
	cmus-remote -p
else
	playerctl previous
fi
