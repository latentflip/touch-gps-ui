release: build
	docker build -t latentflip/touch-gps-ui:latest .

build: clean
	docker build -t touch-gps-build -f Dockerfile.build .
	docker run -v ${PWD}/artifacts:/artifacts touch-gps-build

clean:
	rm -rf ./artifacts
	mkdir ./artifacts

.PHONY: clean build
