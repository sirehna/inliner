.PHONY: all 1.13.1

all: 1.13.1

1.13.1:
	docker build -t inliner:$@ --build-arg INLINER_VERSION=$@ .
