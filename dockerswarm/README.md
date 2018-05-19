Praktik kali ini menggunakan katacoda.com -> docker swarm playground

docker swarm init
docker service create -d --name node01 -p 3000:3000 nodetest
docker service ls
docker service scale node01=3
docker service ls
docker container ls
docker container stop idxxx

open web browser port 3000
docker container ls

part 2

docker service rm node01
docker container ls


docker build -> myapp, webserver, mydb
docker network create --driver overlay blog_network
docker network ls

docker service create -d --replicas 1 --name db_server --network blog_network --mount type=volume,source=database_volume,destination=/data/db mydb

docker service create -d --name app_Server --replicas 3 --network blog_network myapp

docker service ls
docker container ls
docker container exec -it contidmyapp /bin/bash
$ ping db_server

docker service create -d --name webserver --network blog_network --replicas 3 -p 8080:80 webserver

docker service ls

docker container ls
docker container kill <idcontainer>




