all:
	@docker compose -f ./srcs/docker-compose.yaml up -d --build

down:
	@docker compose -f ./srcs/docker-compose.yaml down

re:
	@docker compose -f ./srcs/docker-compose.yaml up -d --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

# rm -rf ./srcs/data/adminer/* \
# rm -rf ./srcs/data/mariadb/* \
# rm -rf ./srcs/data/wordpress/* \

.PHONY: all re down clean
