#! /usr/bin/env bash

if [ "$(pgrep cmus)" != ''  ]; then
	cmus-remote -n
else
	playerctl next
fi
