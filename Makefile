all: up

up:
	cd ./srcs/ && docker-compose up --build

stop:
	cd ./srcs/ && docker-compose stop

down:
	cd ./srcs/ && docker-compose down


#change to static path
clean: down
	rm -rf ./srcs/data/adminer/*
	rm -rf ./srcs/data/mariadb/*
	rm -rf ./srcs/data/wordpress/*
	docker volume rm srcs_database srcs_website


fclean:
	docker system prune -af

