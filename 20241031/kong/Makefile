.PHONY:
	build

build:
	luarocks pack kong-auth-request
	docker build --no-cache -t kong-auth .
restart:
	docker-compose up -d kong
