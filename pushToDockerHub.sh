export DOCKER_USERID=${DOCKER_USERID:-"yelloan"}
export DOCKER_IMAGE=${DOCKER_IMAGE:-"python-docker"}
export DOCKER_TAG=${DOCKER_TAG:-"3.6.3-183.0.0"}
docker build -t $DOCKER_IMAGE .
docker tag $DOCKER_IMAGE $DOCKER_USERID/$DOCKER_IMAGE:$DOCKER_TAG
docker push $DOCKER_USERID/$DOCKER_TAG