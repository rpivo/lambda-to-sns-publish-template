# todo: replace real path as environment variable
docker start bundler || docker run -dt --name bundler -v ~/Documents/dev/lambda-to-sns-publish-template:/bind-mount amazonlinux;
docker exec -i bundler bash < build.sh
docker stop bundler;
