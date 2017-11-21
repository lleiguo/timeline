docker build -t timeline:0.1 .
docker tag timeline:0.1 gcr.io/xmatters-eng-dev/timeline:0.1
gcloud docker -- push gcr.io/xmatters-eng-dev/timeline
kubectl apply -f ./timeline-deploy.yaml -n lei-gcp
kubectl apply -f ./timeline-service.yaml -n lei-gcp
