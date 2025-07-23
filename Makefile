ENV_FILE=.env
ENV_LOCAL_FILE=.env.local

ifneq ("$(wildcard .env)","")
	include .env
	export $(shell sed 's/=.*//' .env)
endif

ifneq ("$(wildcard .env.local)","")
	include .env.local
	export $(shell sed 's/=.*//' .env.local)
endif

.PHONY: help build run stop logs start startd clean cleanall restartd buildpostgres runpostgres pushpostgres runpgadmin

start :
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up

logs : 
	docker compose logs -f

build: 
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build

buildd: 
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build -d

clean: 
	docker compose down

cleanall: 
	docker compose -v down

startd :
	@echo -e "--------"
	@echo -e "DATABASE"
	@echo -e "--------"
	$(MAKE) buildd
	$(MAKE) logs

restartd:
	$(MAKE) clean
	$(MAKE) buildd
	$(MAKE) logs


buildpostgres:
	docker build -t ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_HOST):v$(POSTGRES_VERSION) -f ./Dockerfile.post .

runpostgres:
	docker pull ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_HOST):v$(POSTGRES_VERSION)
	@if [ -z "$$(docker network ls --filter name=^$(POSTGRES_NETWORK_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create network $(POSTGRES_NETWORK_NAME)"; \
		docker network create $(POSTGRES_NETWORK_NAME); \
	else \
		echo "Network $(POSTGRES_NETWORK_NAME) already exists"; \
	fi
	@if [ -z "$$(docker volume ls --filter name=^$(POSTGRES_VOLUME_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create volume $(POSTGRES_VOLUME_NAME)"; \
		docker volume create $(POSTGRES_VOLUME_NAME); \
	else \
		echo "Volume $(POSTGRES_VOLUME_NAME) already exists"; \
	fi
	docker run -d \
		--name $(POSTGRES_HOST) \
		--restart always \
		--env-file $(ENV_FILE) \
		--env-file $(ENV_LOCAL_FILE) \
		--network $(POSTGRES_NETWORK_NAME) \
		-p $(POSTGRES_EXT_PORT):5432 \
		-v $(POSTGRES_VOLUME_NAME):/var/lib/postgresql/data \
		ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_HOST):v$(POSTGRES_VERSION)

		
pushpostgres:
	docker push ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_HOST):v$(POSTGRES_VERSION)