build:
	cd srcs && docker compose build

up:
	cd srcs && docker compose build
	cd srcs && docker compose up 

down:
	cd srcs && docker-compose down

logs:
	cd srcs && docker compose logs -f

prune:
	cd srcs && docker system prune -af
	cd /home/cel-mhan/data/wp && sudo rm -rf *
	cd /home/cel-mhan/data/db && sudo rm -rf *

clean:
	docker container stop $(docker container ls -q)
	docker volume rm $(docker volume ls -qf dangling=true)
	cd /home/cel-mhan/data/wp && sudo rm -rf *
	cd /home/cel-mhan/data/db && sudo rm -rf *
	cd srcs && docker system prune -af
