all: check test build

gen:
	go generate ./...

test:
	go test -cover -p 4 ./...
.PHONY: test

check:
	golangci-lint run -c .golangci.yml ./...
fix:
	golangci-lint run -c .golangci.yml --fix ./...
.PHONY: check fix