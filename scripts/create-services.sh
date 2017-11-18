#!/bin/bash
cf login -u $CF_USERNAME -p $CF_PASSWORD -a $CF_API -o development -s thales-df-workshop --skip-ssl-validation

cf target -o development
cf create-service p-mysql 100mb basic-concourse-db
cf create-service p-identity uaa sso-dev

cf target -o qa
cf create-service p-mysql 100mb basic-concourse-db
cf create-service p-identity uaa sso-qa

cf target -o production
cf create-service p-mysql 100mb basic-concourse-db
cf create-service p-identity uaa sso-prod
