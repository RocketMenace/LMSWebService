

.PHONY: format check help

help:
	@echo "Available commands:"
	@echo "  build             - Build the Docker images"
	@echo "  up                - Start all containers in detached mode"
	@echo "  down              - Stop and remove containers"
	@echo "  destroy           - Stop and remove containers, networks, volumes"
	@echo "  stop              - Stop running containers"
	@echo "  restart           - Restart containers"
	@echo "  ps                - List containers"
	@echo "  format            - Run ruff format command"
	@echo "  check             - Run ruff check command"

format:
	ruff format .

check:
	ruff check --fix .

run_all:
	docker-compose up -d

build:
	docker-compose build

run:
	python3 app/app.py

down:
	docker-compose down

destroy:
	docker-compose down -v

stop:
	docker-compose stop

restart:
	docker-compose restart

ps:
	docker-compose ps