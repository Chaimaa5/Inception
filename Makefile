build:
	cd srcs && docker compose build

up:
	cd srcs && docker compose up -d

down:
	cd srcs && docker-compose down

logs:
	cd srcs && docker compose logs -f

prune:
	cd srcs && docker system prune -af
