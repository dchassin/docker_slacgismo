circleci_gridlabd_base.img: Dockerfile Makefile ../circleci_python37_base/circleci_python37_base.img
	docker build --no-cache -f Dockerfile -t slacgismo/circleci_gridlabd_base:latest .
	docker save slacgismo/circleci_gridlabd_base:latest -o circleci_gridlabd_base.img
	docker push slacgismo/circleci_gridlabd_base:latest

clean: 
	rm -f circleci_gridlabd_base.img