circleci.img: Dockerfile
	docker build --no-cache -f Dockerfile -t slacgismo/circleci:latest .
	docker save slacgismo/circleci:latest -o circleci.img
	docker push slacgismo/circleci:latest
