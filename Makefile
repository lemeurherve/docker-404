.PHONY: build run

IMAGE = 'olblak/jenkins404'
TAG = $(shell git rev-parse HEAD | cut -c1-6)


build:
	docker build -t $(IMAGE):$(TAG) -t $(IMAGE):$(TAG) .

run:
	docker run -i -t -p 80:80 $(IMAGE):$(TAG)

publish:
	docker push $(IMAGE):$(TAG)

