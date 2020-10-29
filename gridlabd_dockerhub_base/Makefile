help:
	@echo "make build    - builds docker image 'slacgismo/gridlabd_dockerhub_base:build'"
	@echo "make install  - rename built image to 'slacgismo/gridlabd_dockerhub_base:latest'"
	@echo "make deploy   - pushed 'slacgismo/gridlabd_dockerhub_base:latest' to dockerhub"

build:
	docker build --no-cache -f Dockerfile -t "slacgismo/gridlabd_dockerhub_base:build" .

all: deploy

install: build
	docker tag "slacgismo/gridlabd_dockerhub_base:build" "slacgismo/gridlabd_dockerhub_base:latest"

deploy: install
	docker push "slacgismo/gridlabd_dockerhub_base:latest"
