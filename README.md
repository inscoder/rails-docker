# README.md

## Build Docker Image

1. Update Rails vesrion in Gemfile
2. Run this command to build the dockger image

```bash
docker build -t rails:6.1.4 .
```

## Run Rails command

```bash
docker run --rm rails:6.1.4 xxxxxxxxx
```

```bash
docker run --rm rails:6.1.4 -v
```

For example, create an new app called myapp

```bash
docker run --rm rails:6.1.4 new myapp --force --database=postgresql
```
