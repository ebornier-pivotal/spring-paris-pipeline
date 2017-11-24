#!/bin/bash

ls
cat check-actuator/rollback

tarball_url=`curl https://api.github.com/repos/ebornier-pivotal/spring-paris-boot/releases/tags/V1.0.0 | jq -r ".tarball_url"`
curl -O  $tarball_url

mv V* release.tar.gz

mv release.tar.gz previous-version/


