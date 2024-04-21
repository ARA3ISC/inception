all: up

up:
	docker-compose -f ./srcs/docker-compose.yaml up --build

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

down:
	docker-compose -f ./srcs/docker-compose.yaml down

clean: down
	rm -rf ./srcs/data/adminer/*
	rm -rf ./srcs/data/mariadb/*
	rm -rf ./srcs/data/wordpress/*
# dodocker volume rm srcs_database src_website
# docker network rm $(docker network ls -q) 2>/dev/null

fclean: clean
	docker system prune -af
	docker volume rm srcs_database srcs_website


