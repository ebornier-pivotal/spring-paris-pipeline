cf target -o $1 -s $2
cf delete-orphaned-routes -f
cf apps |  awk '{print $1}{system("cf delete -f " $1)}'
