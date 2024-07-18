all :
	@mkdir -p /home/omansour/data/mariadb
	@mkdir -p /home/omansour/data/wordpress
	@docker-compose -f srcs/docker-compose.yml up --build -d

stop :
	@docker-compose -f srcs/docker-compose.yml stop

start :
	@docker-compose -f srcs/docker-compose.yml start

clean :
	@docker-compose -f srcs/docker-compose.yml down -v

fclean : clean
	@docker system prune -af
	@sudo rm -fr /home/omansour/data

re : fclean all
