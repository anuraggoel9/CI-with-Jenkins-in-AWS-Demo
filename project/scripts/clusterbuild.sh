#!/bin/bash
gcloud auth activate-service-account \
  my-jenkins-gcr-account@endless-bolt-264307.iam.gserviceaccount.com \
          --key-file=/path/key.json --project=endless-bolt-264307

gcloud container clusters get-credentials democluster --zone us-central1-c --project endless-bolt-264307
