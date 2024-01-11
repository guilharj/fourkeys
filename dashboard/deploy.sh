gcloud builds submit dashboard --config=dashboard/cloudbuild.yaml --project $PROJECT_ID && gcloud run deploy fourkeys-grafana-dashboard \
--image=gcr.io/bt-ame-poc/fourkeys-grafana-dashboard \
--set-env-vars=PROJECT_NAME=bt-ame-poc \
--region=us-central1 \
--project=bt-ame-poc \
 && gcloud run services update-traffic fourkeys-grafana-dashboard --to-latest