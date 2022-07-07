wget https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.conf
wget https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.zip
unzip -d example jusan-docker-mount

docker run \
  -d \
  -it \
  -p 9999:80 \
  --name jusan-docker-mount \
  -v "$(pwd)"/jusan-docker-mount.conf:/etc/nginx/conf.d/jusan-docker-mount.conf \
  -v "$(pwd)"/example/jusan-docker-mount/:/var/www/example/ \
  nginx:mainline

docker exec jusan-docker-mount rm /etc/nginx/conf.d/default.conf
docker exec jusan-docker-mount nginx -s reload
