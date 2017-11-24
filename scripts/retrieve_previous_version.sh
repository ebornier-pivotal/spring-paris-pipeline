#!/bin/bash

ls
cat check-actuator/rollback

tarball_url=`curl "https://api.github.com/repos/ebornier-pivotal/spring-paris-boot/releases/tags/V1.0.0" -k | jq -r ".tarball_url"`
echo "test" $tarball_url
curl -O  $tarball_url -k

mv "V1.0.0" release.tar.gz

mv release.tar.gz previous-version/


