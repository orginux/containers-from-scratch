# Building a container from scratch in Go
[YouTube video](https://www.youtube.com/watch?v=_TsSmSu57Zo)

## Commands
Create ubuntu root fs in `ubuntufs` directory:
```bash
make ubuntufs
```

Build binary:
```bash
make build
```

## Running
Run this code only [inside Virtual Machine](https://github.com/orginux/vagrants/tree/main/vm-for-dev);

```bash
cp -vr ubuntufs/ /
UBUNTUFS_PATH=/ubuntufs

./conatainer run bash
```
