all:
	@make -C circleci_python37_base
	@make -C circleci_gridlabd_base

clean:
	@make -C circleci_python37_base clean
	@make -C circleci_gridlabd_base clean
