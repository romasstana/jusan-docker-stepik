wget https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.conf

wget https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.zip

unzip -d example jusan-dockerfile.zip

touch Dockerfile

cat << EOF > ./Dockerfile
FROM nginx:mainline

RUN rm /etc/nginx/conf.d/*.conf

COPY ./jusan-dockerfile.conf /etc/nginx/conf.d/jusan-dockerfile.conf

COPY ./example/* /var/www/jusan-dockerfile/
EOF



sudo docker build -t jusan-dockerfile .
sudo docker images 

sudo docker run -d -p 6060:80 --name jusan-dockerfile jusan-dockerfile
