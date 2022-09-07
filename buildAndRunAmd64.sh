docker buildx build --platform linux/amd64 -f ./Dockerfile -t java-lambda ./rocksdb-java-app
docker run --name java-lambda --rm java-lambda:latest