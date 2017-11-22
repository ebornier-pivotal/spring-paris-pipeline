#!/bin/sh 

echo "Performed source code analysis" 

metric=`curl http://spring-boot-paris.cfapps.alex.examples.cf/metrics | jq -r '.["counter.spring.paris.attendees.view"]'`
echo $metric
if [ $metric > 10 ] 
then
       echo "more"
       exit 1
fi
exit 0
