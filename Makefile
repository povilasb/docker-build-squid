image_tag := povilasb/squid-builds


.PHONY: image
image:
	docker build -t $(image_tag) .

.PHONY: container
container:
	docker run --name povilasb-docker-builds \
		-t $(image_tag)
