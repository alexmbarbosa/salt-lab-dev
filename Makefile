#-- Arguments:

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down

run-master:
	docker-compose exec salt-master

run-minion-1:
	docker-compose exec salt-minion-1

run-minion-2:
	docker-compose exec salt-minion-2