# Building a container from scratch in Go
[YouTube video](https://www.youtube.com/watch?v=_TsSmSu57Zo)

## Commands
Create ubuntu root fs in `ubuntufs` directory:
```bash
make ubuntu-rootfs
```

Build binary:
```bash
make build
```

## Running
Set env `UBUNTUFS=/path/to/ubuntufs` and run:
```bash
./conatainer run bash
```

## Important
Recommended run [inside vm](https://github.com/orginux/vagrants/tree/main/vm-for-dev);
