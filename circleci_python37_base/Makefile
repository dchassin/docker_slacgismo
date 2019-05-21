circleci_python37_base.img: Dockerfile Makefile
	docker build --no-cache -f Dockerfile -t slacgismo/circleci_python37_base:latest .
	docker save slacgismo/circleci_python37_base:latest -o circleci_python37_base.img
	docker push slacgismo/circleci_python37_base:latest

clean:
	rm -f circleci_python37_base.img