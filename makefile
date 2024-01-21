.PHONY: deps
deps:
	go mod tidy

.PHONY: test
test:
	go test ./...

.PHONY: test/cover
test/cover:
	go test -coverprofile ./cover.out && go tool cover -html=./cover.out