echo "Resin processes: "
ps -ef | grep resin | grep -v grep | grep -v kill
echo "-----------------------------------"
echo "Brutally killing resin..."
ps uafx | grep resin | awk '{ print $2 }' | xargs kill -9 > /dev/null 2>&1;
echo "Resin killed."

