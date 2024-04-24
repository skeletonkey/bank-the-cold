// lib-instance-gen-go: File auto generated -- DO NOT EDIT!!!
.DEFAULT_GOAL=build

build:
	go fmt ./...
	go vet ./...
	go build -o bin/bank-the-cold app/*.go

install:
	cp bin/bank-the-cold /usr/local/sbin/bank-the-cold

golib-latest:
	go get -u github.com/grpc/grpc-go@latest
	go get -u github.com/skeletonkey/lib-core-go@latest
	go get -u github.com/skeletonkey/lib-instance-gen-go@latest

	go mod tidy

app-init:
	go generate
