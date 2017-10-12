GO    := go

BINARY_NAME				?= auth
BINARY_LOCATION			?= .

all: fmt vet style build test

build:
	@echo ">> building binary"
	@$(GO) build -ldflags "-s -w" -o $(BINARY_NAME) $(BINARY_LOCATION)

fmt:
	@echo ">> formatting code"
	@$(GO) fmt ./...

style:
	@echo ">> checking code style"
	@! gofmt -d $(shell find . -path ./vendor -prune -o -name '*.go' -print) | grep '^'

test:
	@echo ">> running tests"
	@$(GO) test -short ./...

vet:
	@echo ">> vetting code"
	@$(GO) vet ./...

.PHONY: all build fmt style test vet