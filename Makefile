DOCKERHUB_REPONAME=kumanoryo
CONTAINER_NAME=debian11-fish

MAKEFILE_DIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))
WORK_DIR=$(MAKEFILE_DIR)

.PHONY:test.build
test.build:
	cd $(WORK_DIR)
	docker build --tag=$(DOCKERHUB_REPONAME)/$(CONTAINER_NAME):test ./docker

.PHONY:test.rmi
test.rmi:
	docker rmi $(DOCKERHUB_REPONAME)/$(CONTAINER_NAME):test
