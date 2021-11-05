IMAGE_NAME ?= watfaq/clash-dashboard

build:
	rm -rf ./dist
	docker build -t $(IMAGE_NAME) .
	docker run \
		-u $(id -u ${USER}):$(id -g ${USER}) \
		-v $(PWD):/dist $(IMAGE_NAME) \
		--rm \
		"cp -r /app/src/dist /dist"
