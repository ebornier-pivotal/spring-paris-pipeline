#!/bin/bash
export
cf login -u $CF_USERNAME -p $CF_PASSWORD -a $CF_API -o prod -s $CF_ORG --skip-ssl-validation

cf target -o prod 
cf create-service metrics-forwarder unlimited ${APP_NAME}-metrics
cf bind-service ${APP_NAME} ${APP_NAME}-metrics
