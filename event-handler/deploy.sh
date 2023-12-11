gcloud builds submit event-handler --config=event-handler/cloudbuild.yaml --project $PROJECT_ID && gcloud run deploy event-handler \
--image=gcr.io/bt-ame-poc/event-handler \
--set-env-vars=PROJECT_NAME=bt-ame-poc \
--region=us-central1 \
--project=bt-ame-poc \
 && gcloud run services update-traffic event-handler --to-latest