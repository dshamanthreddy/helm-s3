PKG := github.com/hypnoglow/helm-s3

.PHONY: dep
dep:
	@dep ensure -v -vendor-only

.PHONY: build
build:
	@./hack/build.sh $(CURDIR) $(PKG)

.PHONY: install
install:
	@./hack/install.sh

.PHONY: test
test:
	go test ./...

.PHONY: test-integration
test-integration:
	@./hack/integration-tests-local.sh
