#!/bin/bash
cd release
ls
tar xvf source.tar.gz --strip 1
export
./mvnw clean package -Dmaven.test.skip=true

cat << EOF > manifest.yml
---
applications:
- name: basic-concourse
  route: ${APP_NAME}
  memory: 1G
  instances: 1
EOF

mv manifest.yml ../build/
mv target/*.jar ../build/
