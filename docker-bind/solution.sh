wget https://stepik.org/media/attachments/lesson/691221/nginx.conf

   docker run \
   -d \
   -it \
   --name jusan-docker-bind  \
   -p 7777:80  \
   --mount type=bind,source="$(pwd)"/nginx.conf,target=/etc/nginx/nginx.conf \
   nginx:mainline

docker start jusan-docker-bind 
