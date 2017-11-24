#!/bin/sh 

echo "Performed source code analysis" 

metric=`curl http://spring-boot-paris.cfapps.alex.examples.cf/metrics | jq -r '.["counter.spring.paris.attendees.view"]'`
echo $metric
if [ $metric > 10 ] 
then
      echo "true" > rollback
      exit 0;
fi
echo "false" > rollback

