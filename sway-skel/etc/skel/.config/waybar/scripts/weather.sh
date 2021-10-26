#!/bin/bash

#LOC=$(curl -s ipinfo.io/city | awk '{print $2}')
LOC=$(curl -s https://ipapi.co/city)
# HTML encode string as %20
LOCATION=$(sed -e "s/ /%20/g" <<<"$LOC")
content=$(curl -sS "https://thisdavej.azurewebsites.net/api/weather/current?loc=$LOCATION&deg=C")
ICON=$(curl -s 'https://wttr.in/$LOC?format=1' | sed 's/[+0-9a-cA-Z°-]//g')
# TEMP=$(echo $content | jq -r '. | "\(.temperature)°\(.degType)"' | sed 's/"//g')
TEMP=$(echo $content | jq -r '. | "\(.temperature)°\(.degType)"' | sed 's/C//g')
TOOLTIP=$(echo $content | jq -r '. | "\(.temperature)°\(.degType)\n\(.skytext)"' | sed 's/"//g')
CLASS=$(echo $content | jq .skytext)
# echo '{"text": "'$TEMP'", "tooltip": "'$ICON $TOOLTIP $LOC'", "class": '$CLASS' }'
echo '{"text": "'$ICON $TEMP'", "tooltip": "'$ICON $TOOLTIP $LOC'", "class": '$CLASS' }'
