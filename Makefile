include .env

build:
	@echo "## $@ ##"
	@echo 'task: build the docker image'
	@docker build \
 --tag=$(DOCKER_IMAGE):$(DOCKER_TAG) \
 .

push:
	@echo "## $@ ##"
	@echo 'task: build the docker image'
	@docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

up:
	@echo $(DOCKER_IMAGE):$(DOCKER_TAG)
	@#docker run -it $(DOCKER_IMAGE):$(DOCKER_TAG) /bin/ash
	@docker-compose up -d
	@docker attach ash
