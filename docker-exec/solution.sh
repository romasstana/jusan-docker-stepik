wget https://stepik.org/media/attachments/lesson/691221/tester-docker-exec.sh

docker run -d -p 8181:80 --name jusan-docker-exec -v "$(pwd)"/script.sh:/var/script.sh nginx:mainline 

docker exec -it jusan-docker-exec /bin/bash /var/script.sh

docker start jusan-docker-exec

