build:
	cd srcs && docker compose build

up:
	cd srcs && docker compose build
	cd srcs && docker compose up -d

down:
	cd srcs && docker compose down

clean:
	cd srcs && docker system prune -af
	docker volume rm srcs_wordpress srcs_wordpress_db
	cd /home/cel-mhan/data/wp && sudo rm -rf *
	cd /home/cel-mhan/data/db && sudo rm -rf *
