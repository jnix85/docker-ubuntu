for i in jammy lunar mantic
do git checkout $i
docker buildx build --platform linux/amd64,linux/arm64 --pull --push --build-arg DEBIAN_FRONTEND=noninteractive -t registry.pupgizmo.com/ubuntu/${i}:latest -f Dockerfile . 
done
git checkout main