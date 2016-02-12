docker-compose build
docker-compose up

docker-compose run rails rake db:create
docker-compose run rails rake db:setup



todo:
- rails volumes not working?
