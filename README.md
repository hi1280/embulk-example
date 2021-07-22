# embulk-example

## Usage

build image

```
$ docker build -t embulk-example .
```

run

```
$ docker run --rm -it -v $(pwd):/work --env-file .env --network mysql80_default embulk-example run athena2mysql.yml.liquid
```

