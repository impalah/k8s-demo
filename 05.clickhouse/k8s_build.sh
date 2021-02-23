# Authorize in DO
doctl auth init -t ${DO_TOKEN}

######## CLUSTER PRODUCTION CLICKHOUSE ######## 
doctl kubernetes cluster kubeconfig save k8s-production-clickhouse-nyc3

export VOLUME_SIZE="100Gi"
export DEPLOYMENT_CPU_REQUESTS="1000m"
export DEPLOYMENT_MEMORY_REQUESTS="2Gi"
export DEPLOYMENT_CPU_LIMIT="2000m"
export DEPLOYMENT_MEMORY_LIMIT="3Gi"

envsubst < deployment/volume.yml > ./volume.yml
kubectl apply -n $BUDDY_EXECUTION_BRANCH -f ./volume.yml

envsubst < deployment/stateful-set.yml > ./stateful-set.yml
kubectl apply -n $BUDDY_EXECUTION_BRANCH -f ./stateful-set.yml

envsubst < deployment/service.yml > ./service.yml
kubectl apply -n $BUDDY_EXECUTION_BRANCH -f ./service.yml

