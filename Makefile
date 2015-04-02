.PHONY: all gofmt golint govet test

all: gofmt golint govet test

gofmt:
		gofmt -s=true -d=true -l=true .

golint:
		golint .

govet:
		go tool vet -all -v=true .

test:
	go test -v -race -cpu=1,2,4 -coverprofile=coverage.txt -covermode=atomic
