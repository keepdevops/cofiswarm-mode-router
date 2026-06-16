ROLE := mode-router
.PHONY: build test test-standalone-layout test-mode-config-gate
build:
	go build -o bin/cofiswarm-mode-router ./cmd/cofiswarm-mode-router
test: build test-standalone-layout test-mode-config-gate
test-standalone-layout:
	./test/scripts/assert-layout.sh $(ROLE)
test-mode-config-gate:
	./test/scripts/test-mode-config-gate.sh $(ROLE)
