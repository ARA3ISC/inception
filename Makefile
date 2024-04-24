all: up

up:
	@echo "Making up the project..."
	@cd ./srcs/ && docker-compose up --build > /dev/null
stop:
	@echo "Stopping the project..."
	@cd ./srcs/ && docker-compose stop > /dev/null
	@echo "Stopped ✅"

down:
	@echo "Making down the project..."
	@cd ./srcs/ && docker-compose down > /dev/null
	@echo "Down ✅"


#change to static path
clean: down
	@sudo rm -rf /home/maneddam/data/mariadb/*
	@sudo rm -rf /home/maneddam/data/wordpress/*
	@sudo rm -rf /home/maneddam/data/adminer/*
	@docker volume rm srcs_database srcs_website
	@echo "Volumes cleaned ✅"

fclean:
	docker system prune -af

