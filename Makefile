TEST?=./...
LDFLAGS := -ldflags="-X 'main.Version=1.0.0'"

default: test

fmt: generate
	go fmt ./...

test: generate
	go get -t ./...
	go test $(TEST) $(TESTARGS)

generate:
	go generate ./...

clean:
	rm tfdev

lint:

build:
	go build  $(LDFLAGS) -o tfdev

install:
	go install



