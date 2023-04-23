#!/usr/bin/env sh
set -evx

curl --compressed --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0" https://raw.githubusercontent.com/shwesinmaung/live/main/live.json | sed -e 's/\t\t*//g' | jq '.[]| "\(.hteam) vs \(.ateam) \(.link |.[].livelink)"' | sed -e 's/^/#EXTINF:-1 tvg-logo="https:\/\/dl.dropboxusercontent.com\/s\/jiz6iruaxep7up8\/live2.png" group-title="Live Events",/;s/,"/,/g;s/.$//;s/ http/\nhttp/g' > live.m3u
