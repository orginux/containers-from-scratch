ubuntu-rootfs:
	docker run --rm --name ubuntu-fs-donor -d ubuntu:20.04 /bin/bash -c "sleep 60"
	mkdir ubuntufs; cd ubuntufs; docker cp ubuntu-fs-donor:/ .
	docker stop ubuntu-fs-donor

build:
	go build -o conatainer main.go
