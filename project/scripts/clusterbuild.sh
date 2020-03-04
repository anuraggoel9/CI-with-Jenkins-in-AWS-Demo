#!/bin/bash
gcloud auth activate-service-account \
  my-jenkins-gcr-account@endless-bolt-264307.iam.gserviceaccount.com \
          --key-file=/path/endless-bolt-264307-3f9360c7636c.json --project=endless-bolt-264307

gcloud container clusters get-credentials democluster --zone us-central1-c --project endless-bolt-264307
