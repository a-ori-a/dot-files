#! /usr/bin/env bash

if [ "$(pgrep cmus)" != ''  ]; then
	cmus-remote -u
else
	playerctl play-pause
fi
