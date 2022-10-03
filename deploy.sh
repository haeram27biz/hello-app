#!/usr/bin/env bash
echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin                                                              
docker tag $PUSH_IMAGE_REPO:$PUSH_IMAGE_TAG $PUSH_IMAGE_REPO:latest                                                            
docker push $PUSH_IMAGE_REPO:$PUSH_IMAGE_TAG                                                                                   
docker push $PUSH_IMAGE_REPO:latest
