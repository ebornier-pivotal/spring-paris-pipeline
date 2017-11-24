#!/bin/bash

ls
cat check-actuator/rollback

tag=`curl "https://api.github.com/repos/ebornier-pivotal/spring-paris-boot/releases/tags/V1.0.0?access_token=${GIT_ACCESS_TOKEN}" -k`
echo $tag

tarball_url=`echo $tag | jq -r ".tarball_url"`
echo $tarball_url
curl -O  $tarball_url -k

mv "V1.0.0" release.tar.gz

mv release.tar.gz previous-version/


