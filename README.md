# k8s-demo
Demo files for k8s training session

## 01.basic-application

Simple webserver.

## 02.hpa

Horizontal Pod Autoscaling demo.

## 03.aws-cluster

Launch cluster in AWS and deploy application.


## 06.pod.network.config

Simple python application using redis. To learn about docker compose, docker networking, upload to docker registries and kubernetes configuration (configmaps and secrets).

### Build image

docker build -t basicweb:latest .

### Push to Docker hub

docker login --username=yourusername --password yourpassword
docker image tag basicweb:latest impalah/basicweb:latest

docker push yourhubusername/imagename

