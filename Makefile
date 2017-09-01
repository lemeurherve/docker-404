.PHONY: build run

build:
	docker build -t jenkinsci/404 .
run:
	docker run -i -t -p 80:80 jenkinsci/404
