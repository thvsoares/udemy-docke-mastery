docker run -d -p 80:80 --name uproxy nginx
docker run -d -p 8080:80 --name uweb httpd
docker run -d -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=yes --name udb mysql

docker ps
#PS C:\Users\thiag\repos\udemy-docker> docker ps
#CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                    PORTS                    NAMES
#91be1a917d92        httpd               "httpd-foreground"       8 minutes ago       Up 8 minutes              0.0.0.0:8080->80/tcp     uweb
#6c4212dbb199        nginx               "nginx -g 'daemon of…"   11 minutes ago      Up 11 minutes             0.0.0.0:80->80/tcp       uproxy
#


docker ps -a
#CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                     PORTS                    NAMES
#2413cc23372e        mysql               "docker-entrypoint.s…"   5 minutes ago       Exited (1) 5 minutes ago                            udb
#91be1a917d92        httpd               "httpd-foreground"       16 minutes ago      Up 16 minutes              0.0.0.0:8080->80/tcp     uweb
#6c4212dbb199        nginx               "nginx -g 'daemon of…"   19 minutes ago      Up 19 minutes              0.0.0.0:80->80/tcp       uproxy
#ac4478d4e322        sql                 "powershell -Command…"   35 minutes ago      Up 34 minutes (healthy)    0.0.0.0:1433->1433/tcp   dreamy_darwin
#PS C:\Users\thiag\repos\udemy-docker> docker rm -f 241 91b 6c4
#241
#91b
#6c4

#thiagomullet@teste-164717:~$ docker logs e7
#Initializing database
#GENERATED ROOT PASSWORD: OoC1vav4aeg1waezoNahtiew6Eepee5u