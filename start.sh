source ./sh/env.sh;
docker start bundler || docker run -dt --name bundler -v $LOCAL_PATH:/bind-mount amazonlinux;
docker exec -i bundler bash < sh/build.sh;
docker stop bundler;
