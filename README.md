# jusan-docker


## Testing
```bash
./tester.sh
```

## jusan-run Execution

Do the following command to run the nginx in port 80 of container and to map it for 8888 port of the host
```bash
docker run -d --name jsn-dkr-run -p 8888:80 nginx:mainline
```

Or you could run any solution.sh in the given directories
```bash
bash ./solution.sh
```
