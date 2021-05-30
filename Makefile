container_name = ubuntu-fs-donor
fs_dir = ubuntufs/

ubuntufs:
	docker run --rm --name $(container_name) -d ubuntu:20.04 /bin/bash -c "sleep 5"
	mkdir $(fs_dir); cd $(fs_dir); docker cp $(container_name):/ .
	docker stop $(container_name)

build:
	go build -o conatainer main.go
