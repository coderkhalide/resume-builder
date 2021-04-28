default: build

install:
	docker-compose run --rm client npm install
	docker-compose run --rm server npm install

up:dev
dev:
	docker-compose up -d
	open http://localhost:4000

down:
	docker-compose down

recreate:
	docker-compose down
	docker-compose build
	docker-compose up -d

recreate-client:
	docker-compose stop client
	docker-compose build client
	docker-compose up -d client

recreate-server:
	docker-compose stop server
	docker-compose build server
	docker-compose up -d server

clean:
	rm -rf ./client/build ./client/.next ./client/out

clean-data:
	rm -rf ./data/*

build:down clean
	docker-compose run --rm client npm run build

.PHONY: build dist data
