#!/bin/bash
# baraction.sh for spectrwm status bar

## RAM
mem() {
    used=`free | awk '/Mem/ {printf "%d", $3 / 1024.0}'`
    if  [ $(($used >= 1024)) ]; then
        mem=`free | awk '/Mem/ {printf "%.1fGiB/%dGiB\n", $3 / 1024.0 / 1024.0, $2 / 1000.0 / 1000.0 }'`
    else
    	mem=`free | awk '/Mem/ {printf "%dMiB/%dGiB\n", $3 / 1024.0, $2 / 1000.0 / 1000.0 }'`
    fi
    echo -e "$mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}

## VOLUME
vol() {
    vol=`amixer get Master | awk -F'[][]' 'END{ print $4":"$2 }' | sed 's/on://g'`
    echo -e "VOL: $vol"
}

SLEEP_SEC=1
#loops forever outputting a line every SLEEP_SEC secs

# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the 
# echo output too long to display correctly.
while :; do
    echo "+@fg=1; $(cpu) +@fg=0;|+@fg=2; $(mem) +@fg=0;|+@fg=3; $(vol) +@fg=0;|"
    sleep $SLEEP_SEC
done
