# Building a container from scratch in Go
[YouTube video](https://www.youtube.com/watch?v=_TsSmSu57Zo)

## Getting debian root fs:
Terminal 1
```bash
docker run --rm -it --name debian-donor debian:10 sh
# inside container
apt-get update && apt-get install -y procps
apt-get clean && rm -rf /var/lib/apt/lists/*
```

Terminal 2:
```bash
mkdir debianfs && cd debianfs
docker cp debian-donor:/ .
```

Terminal 1
```
exit
```
