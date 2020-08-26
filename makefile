build:
	docker build . -t typescript-tests $(c)

run:
	docker run --rm -it \
	--name typescript-tests \
	-p 8080:8080 \
	-v `pwd`:/app \
	-v /app/node_modules \
	typescript-tests $(c)

update:
	make run c="npm update"

audit-fix:
	make run c="npm audit fix"