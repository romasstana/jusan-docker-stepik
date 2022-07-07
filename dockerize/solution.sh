git clone https://github.com/makhambettorezhan/jusan-fastapi-final.git
cd jusan-fastapi-final
touch Dockerfile
cat << EOF > Dockerfile
FROM python:3.8

RUN pip3 install fastapi uvicorn

EXPOSE 8080

COPY main.py /

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

EOF

sudo docker build -t jusan-fastapi-final:dockerized .
sudo docker images
sudo docker run -d -p 8080:8080 --name jusan-dockerize jusan-fastapi-final:dockerized
