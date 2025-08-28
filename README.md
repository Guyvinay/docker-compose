# Docker & Docker Compose Commands

---

## Docker Commands

| Command                                          | Description                           | Example                                           |
|--------------------------------------------------|---------------------------------------|---------------------------------------------------|
| `docker --version`                               | Show Docker version                   | `docker --version`                                |
| `docker info`                                    | Display system-wide info              | `docker info`                                     |
| `docker ps`                                      | List running containers               | `docker ps`                                       |
| `docker ps -a`                                   | List all containers (incl. stopped)   | `docker ps -a`                                    |
| `docker images`                                  | List all images                       | `docker images`                                   |
| `docker network ls`                              | List networks                         | `docker network ls`                               |
| `docker volume ls`                               | List volumes                          | `docker volume ls`                                |
| `docker run -d --name my_container nginx:latest` | Run container in detached mode        | `docker run -d --name web nginx:latest`           |
| `docker run -it ubuntu bash`                     | Run interactively with shell          | `docker run -it ubuntu bash`                      |
| `docker stop <id>`                               | Stop container                        | `docker stop my_container`                        |
| `docker start <id>`                              | Start container                       | `docker start my_container`                       |
| `docker restart <id>`                            | Restart container                     | `docker restart my_container`                     |
| `docker rm <id>`                                 | Remove stopped container              | `docker rm my_container`                          |
| `docker rm -f <id>`                              | Force remove running container        | `docker rm -f my_container`                       |
| `docker pull redis:7`                            | Pull image from Docker Hub            | `docker pull redis:7`                             |
| `docker build -t myapp:1.0 .`                    | Build image from Dockerfile           | `docker build -t myapp:1.0 .`                     |
| `docker tag myapp:1.0 myrepo/myapp:1.0`          | Tag image                             | `docker tag myapp:1.0 vinay/myapp:1.0`            |
| `docker push myrepo/myapp:1.0`                   | Push image to registry                | `docker push vinay/myapp:1.0`                     |
| `docker rmi <id>`                                | Remove image                          | `docker rmi myapp:1.0`                            |
| `docker image prune -a`                          | Remove unused images                  | `docker image prune -a`                           |
| `docker logs <id>`                               | Show logs of container                | `docker logs web`                                 |
| `docker logs -f <id>`                            | Follow logs                           | `docker logs -f web`                              |
| `docker exec -it <id> bash`                      | Enter container shell                 | `docker exec -it web bash`                        |
| `docker exec <id> ls /app`                       | Run one-off command                   | `docker exec web ls /usr/share/nginx/html`        |
| `docker network inspect <net>`                   | Inspect network details               | `docker network inspect bridge`                   |
| `docker network create my_network`               | Create network                        | `docker network create app_net`                   |
| `docker network connect my_network <ctr>`        | Attach container to network           | `docker network connect app_net web`              |
| `docker network disconnect my_network <ctr>`     | Detach container from network         | `docker network disconnect app_net web`           |
| `docker network rm <net>`                        | Remove network                        | `docker network rm app_net`                       |
| `docker volume create my_volume`                 | Create volume                         | `docker volume create db_data`                    |
| `docker volume inspect my_volume`                | Inspect volume                        | `docker volume inspect db_data`                   |
| `docker run -d -v my_volume:/data nginx`         | Run with volume                       | `docker run -d -v db_data:/var/lib/mysql mysql`   |
| `docker volume rm my_volume`                     | Remove volume                         | `docker volume rm db_data`                        |
| `docker volume prune`                            | Remove unused volumes                 | `docker volume prune`                             |
| `docker inspect <id>`                            | Inspect container details             | `docker inspect web`                              |
| `docker inspect <image>`                         | Inspect image details                 | `docker inspect nginx:latest`                     |
| `docker stats`                                   | Real-time resource usage              | `docker stats`                                    |
| `docker top <id>`                                | Show processes in container           | `docker top web`                                  |
| `docker container prune`                         | Remove stopped containers             | `docker container prune`                          |
| `docker image prune`                             | Remove dangling images                | `docker image prune`                              |
| `docker network prune`                           | Remove unused networks                | `docker network prune`                            |
| `docker volume prune`                            | Remove unused volumes                 | `docker volume prune`                             |
| `docker system prune -a --volumes`               | Clean all unused (CAUTION)            | `docker system prune -a --volumes`                |
| `docker save -o myapp.tar myapp:1.0`             | Save image to tar                     | `docker save -o app.tar myapp:1.0`                |
| `docker load -i myapp.tar`                       | Load image from tar                   | `docker load -i app.tar`                          |
| `docker export <id> > container.tar`             | Export container FS                   | `docker export web > web.tar`                     |
| `docker import container.tar myapp:imported`     | Import container FS as image          | `docker import web.tar myapp:imported`            |
| `docker rename old_name new_name`                | Rename a container                    | `docker rename web web_old`                       |
| `docker cp <ctr>:/path host_path`                | Copy from container to host           | `docker cp web:/usr/share/nginx/html ./site`      |
| `docker cp host_path <ctr>:/path`                | Copy from host to container           | `docker cp ./config.json web:/etc/config.json`    |
| `docker history <image>`                         | Show image layers                     | `docker history nginx:latest`                     |
| `docker diff <ctr>`                              | Show filesystem changes in container  | `docker diff web`                                 |
| `docker update --cpus=1 <ctr>`                   | Update resources on running container | `docker update --cpus=1 web`                      |
| `docker attach <ctr>`                            | Attach terminal to running container  | `docker attach web (use CTRL-p CTRL-q to detach)` |

---

## 🔹 Docker Compose Commands

| Command                                       | Description                             | Example                                                                     |
|-----------------------------------------------|-----------------------------------------|-----------------------------------------------------------------------------|
| `docker-compose --version`                    | Show version                            | `docker-compose --version`                                                  |
| `docker-compose up`                           | Start services (foreground)             | `docker-compose up`                                                         |
| `docker-compose up -d`                        | Start services (detached)               | `docker-compose up -d`                                                      |
| `docker-compose down`                         | Stop & remove everything                | `docker-compose down`                                                       |
| `docker-compose stop`                         | Stop containers only                    | `docker-compose stop`                                                       |
| `docker-compose start`                        | Start stopped services                  | `docker-compose start`                                                      |
| `docker-compose restart`                      | Restart all services                    | `docker-compose restart`                                                    |
| `docker-compose up -d <svc>`                  | Start one service                       | `docker-compose up -d backend`                                              |
| `docker-compose up -d --no-deps <svc>`        | Start one service w/o deps              | `docker-compose up -d --no-deps backend`                                    |
| `docker-compose stop <svc>`                   | Stop service                            | `docker-compose stop redis`                                                 |
| `docker-compose rm -f <svc>`                  | Remove service container                | `docker-compose rm -f redis`                                                |
| `docker-compose restart <svc>`                | Restart service                         | `docker-compose restart backend`                                            |
| `docker-compose build`                        | Build all services                      | `docker-compose build`                                                      |
| `docker-compose build <svc>`                  | Build one service                       | `docker-compose build backend`                                              |
| `docker-compose build --no-cache <svc>`       | Rebuild ignoring cache                  | `docker-compose build --no-cache backend`                                   |
| `docker-compose up -d --build <svc>`          | Recreate with rebuild                   | `docker-compose up -d --build backend`                                      |
| `docker-compose logs`                         | Logs of all services                    | `docker-compose logs`                                                       |
| `docker-compose logs <svc>`                   | Logs of one service                     | `docker-compose logs backend`                                               |
| `docker-compose logs -f <svc>`                | Follow logs                             | `docker-compose logs -f backend`                                            |
| `docker-compose run <svc> <cmd>`              | Run one-off command                     | `docker-compose run backend ls /app`                                        |
| `docker-compose exec <svc> bash`              | Enter service shell                     | `docker-compose exec backend bash`                                          |
| `docker-compose up -d --scale <svc>=N`        | Scale service                           | `docker-compose up -d --scale backend=3`                                    |
| `docker-compose config`                       | Validate config                         | `docker-compose config`                                                     |
| `docker-compose config -q`                    | Validate quietly                        | `docker-compose config -q`                                                  |
| `docker-compose -f <file> up -d`              | Use custom file                         | `docker-compose -f docker-compose.prod.yml up -d`                           |
| `docker-compose -f f1.yml -f f2.yml up`       | Merge multiple files                    | `docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d` |
| `docker-compose --profile <name> up`          | Run with profile                        | `docker-compose --profile app up -d`                                        |
| `docker-compose down -v`                      | Remove containers + volumes             | `docker-compose down -v`                                                    |
| `docker-compose down --remove-orphans`        | Remove orphaned containers              | `docker-compose down --remove-orphans`                                      |
| `docker-compose ps`                           | List running services                   | `docker-compose ps`                                                         |
| `docker-compose ps -q`                        | List only container IDs                 | `docker-compose ps -q`                                                      |
| `docker-compose events`                       | Stream real-time events                 | `docker-compose events`                                                     |
| `docker-compose pull`                         | Pull images for services                | `docker-compose pull backend`                                               |
| `docker-compose push`                         | Push built images to registry           | `docker-compose push backend`                                               |
| `docker-compose kill`                         | Force kill services                     | `docker-compose kill backend`                                               |
| `docker-compose port <svc> <port>`            | Get host port mapped to container port  | `docker-compose port backend 8080`                                          |
| `docker-compose run --rm <svc> <cmd>`         | Run one-off container that auto-removes | `docker-compose run --rm backend pytest`                                    |
| `docker-compose images`                       | List service images                     | `docker-compose images`                                                     |
| `docker-compose up -d --remove-orphans`       | Clean orphans on start                  | `docker-compose up -d --remove-orphans`                                     |
| `docker-compose --env-file .env up -d`        | Use env file                            | `docker-compose --env-file .env.prod up -d`                                 |
| `MY_ENV=prod docker-compose up -d`            | Inline env var override                 | `MY_ENV=prod docker-compose up -d`                                          |
| `docker-compose up -d --force-recreate <svc>` | Recreates service forcefully            | `MY_ENV=prod docker-compose up -d`                                          |


---