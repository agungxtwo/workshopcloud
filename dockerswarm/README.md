# PART 1

Praktik kali ini menggunakan katacoda.com -> docker swarm playground

docker swarm init

docker service create -d --name node01 -p 3000:3000 nodetest

docker service ls

docker service scale node01=3

docker service ls

docker container ls

docker container stop <idcontainer>


open web browser port 3000

docker container ls

# Part 2

docker service rm node01

docker container ls


docker build -> myapp, webserver, mydb

docker network create --driver overlay blog_network

docker network ls

docker service create -d --replicas 1 --name db_server --network blog_network --mount type=volume,source=database_volume,destination=/data/db mydb

docker service create -d --name app_server --replicas 3 --network blog_network myapp

docker service ls

docker container ls

docker service create -d --name webserver --network blog_network --replicas 3 -p 8080:80 mywebserver

docker service ls

docker container ls

docker container kill <idcontainer>
  
# Part 3
Untuk menjalankan beberapa container sebenarnya ada mekanisme yang dapat membuat seluruh proses bisa dilakukan dengan 1 file konfigurasi yaml. Fitur ini adalah docker stack. Dengan docker stack memungkinkan untuk meng-otomisasi proses-proses yg dilakukan dalam menjalankan container pada docker swarm.

contoh perintah :
docker stack deploy -c blog_swarm.yml blog_swarm

Sebelum menjalankan command tersebut, seluruh service yang berjalan sebelumnya harus mati




