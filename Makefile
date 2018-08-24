include .env

build:
	@echo "## $@ ##"
	@echo 'task: build the docker image'
	@docker build \
 --target maker \
 --tag=$(DOCKER_IMAGE):maker \
 --tag=$(DOCKER_IMAGE):latest \
 .

# @docker build \
#  --target jre \
#  --tag=$(DOCKER_IMAGE):jre \
#  .

push:
	@echo "## $@ ##"
	@echo 'task: build the docker image'
	@docker push $(DOCKER_IMAGE):maker
	@docker push $(DOCKER_IMAGE):latest
	@#docker push $(DOCKER_IMAGE):jre

up:
	@echo $(DOCKER_IMAGE):maker
	@#docker run -it $(DOCKER_IMAGE):$(DOCKER_TAG) /bin/ash
	@docker-compose up -d
	@docker attach ash

down:
	@echo $(DOCKER_IMAGE):maker
	@docker-compose down

