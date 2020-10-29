build:
  docker build --nocache -f Dockerfile -t slacgismo/gridlabd_dockerhub_base:build .
 
all: build install deploy

install:
  docker tag slacgismo/gridlabd_dockerhub_base:build slacgismo/gridlabd_dockerhub_base:latest
  
deploy:
  docker push slacgismo/gridlabd_dockerhub_base:latest
