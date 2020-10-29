build:
  docker build --nocache -f Dockerfile -t slacgismo/gridlabd_dockerhub_base:build .
 
all: deploy

install: build
  docker tag slacgismo/gridlabd_dockerhub_base:build slacgismo/gridlabd_dockerhub_base:latest
  
deploy: install
  docker push slacgismo/gridlabd_dockerhub_base:latest
