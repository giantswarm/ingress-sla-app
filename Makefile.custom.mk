##@ Custom

HELM_SCHEMA_VERSION := 0.11.1
HELM_SCHEMA := ./bin/helm-schema-$(HELM_SCHEMA_VERSION)

HELM_UNITTEST_VERSION := 0.5.0
HELM_UNITTEST := ./bin/helm-unittest-0.5.0

.PHONY: gen-schma
gen-schema: $(HELM_SCHEMA) ## Generates schema.
	$(HELM_SCHEMA) -l debug

.PHONY: unit-test
unit-test: $(HELM_UNITTEST) ## Run Helm chart unit tests.
	$(HELM_UNITTEST) ./helm/ingress-sla-app

$(HELM_SCHEMA): OS := $(shell go env GOOS)
$(HELM_SCHEMA): ARCH := $(shell go env GOARCH | sed 's/amd64/x86_64/')
$(HELM_SCHEMA): URL = https://github.com/dadav/helm-schema/releases/download/$(HELM_SCHEMA_VERSION)/helm-schema_$(HELM_SCHEMA_VERSION)_$(OS)_$(ARCH).tar.gz
$(HELM_SCHEMA): TMP_DIR := $(shell TMPDIR=${TMPDIR:/tmp} mktemp -d)
$(HELM_SCHEMA):
	curl -L --fail "$(URL)" | tar -C $(TMP_DIR) -zxv helm-schema
	install -D $(TMP_DIR)/helm-schema $(HELM_SCHEMA)
	rm -rf $(TMP_DIR)

$(HELM_UNITTEST): OS := $(shell go env GOOS)
$(HELM_UNITTEST): ARCH := $(shell go env GOARCH)
$(HELM_UNITTEST): NAME := $(subst -$(HELM_SCHEMA_VERSION),,$(notdir $(HELM_SCHEMA)))
$(HELM_UNITTEST): URL = https://github.com/helm-unittest/helm-unittest/releases/download/v$(HELM_UNITTEST_VERSION)/helm-unittest-$(OS)-$(ARCH)-$(HELM_UNITTEST_VERSION).tgz
$(HELM_UNITTEST): TMP_DIR := $(shell TMPDIR=${TMPDIR:/tmp} mktemp -d)
$(HELM_UNITTEST):
	curl -L --fail "$(URL)" | tar -C $(TMP_DIR) -zxv untt
	install -D $(TMP_DIR)/untt $(HELM_UNITTEST)
	rm -rf $(TMP_DIR)
