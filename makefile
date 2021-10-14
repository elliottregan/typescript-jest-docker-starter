all: run

build:
	docker build -t typescript-starter .

run: build
	docker run --rm -it \
	--name typescript-starter \
	-p 8080:8080 \
	-v `pwd`:/app \
	typescript-starter $(c)

develop:
	make run c="npm run develop"

test_develop:
	make run c="npm run test:dev"

test:
	make run c="npm run test"

update:
	make run c="npm update"