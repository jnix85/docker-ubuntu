for i in jammy lunar mantic
do git checkout $i
docker buildx build --platform linux/amd64,linux/arm64 --pull --push -t registry.pupgizmo.com/ubuntu/ubuntu:${i} -f Dockerfile . 
done
git checkout main
