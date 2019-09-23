#!/bin/bash

set -e
export AWS_DEFAULT_REGION=ap-south-1
VERSION=$1
ECS_URL=988922046653.dkr.ecr.ap-south-1.amazonaws.com
ECS_CONTAINER=orion-demo-smtp-proxy

$(aws ecr get-login --no-include-email)
docker build -f Dockerfile -t $ECS_CONTAINER:$VERSION .
docker tag $ECS_CONTAINER:$VERSION $ECS_URL/$ECS_CONTAINER:$VERSION
docker tag $ECS_CONTAINER:$VERSION $ECS_URL/$ECS_CONTAINER:latest
docker push $ECS_URL/$ECS_CONTAINER:$VERSION
docker push $ECS_URL/$ECS_CONTAINER:latest
docker images | grep orion-demo-smtp-proxy