#!/bin/bash
echo 'load dzzoffice image "dzzoffice_bak.tar"'
docker load -i ./dzzoffice_install.tar

echo 'run docker container with loaded image'
docker run --name dzzoffice -d -p 8088:80 dzzoffice_install
#docker exec -it dzzoffice chown -R www-data:www-data /var/www/html/
echo 'docker dzzoffice run succeed! please visit it in your brower with "ip:8088"!!!'