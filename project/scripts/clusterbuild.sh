#!/bin/bash
gcloud container clusters list | grep mycluster 2>&1 > /dev/null
RESULT=$(echo $?)
if [ $RESULT -gt 0 ]
then
gcloud auth activate-service-account \
  my-jenkins-gcr-account@endless-bolt-264307.iam.gserviceaccount.com \
          --key-file=./somekey.json --project=endless-bolt-264307

gcloud container clusters create democluster1 --zone us-central1-c  --num-nodes=2 --project endless-bolt-264307
fi
