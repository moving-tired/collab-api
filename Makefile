default: build

docker_project = collab-api

docker_compose_dev = docker-compose \
			 -p $(docker_project) \
			 -f $(shell pwd)/docker-compose-local.yml

generate-docs: 
	mix deps.get
	mix deps.compile
	DOC=1 mix test

local-test: 
	mix deps.get
	mix deps.compile
	mix test

build:
	mix deps.get
	mix deps.compile
	mix phx.server

start-devenv:
	$(docker_compose_dev) up -d --build --no-recreate

clear-devenv:
	$(docker_compose_dev) down -v --remove-orphans
