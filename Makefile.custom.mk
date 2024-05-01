##@ Custom

HELM_SCHEMA_VERSION := 0.11.1
HELM_SCHEMA := ./bin/helm-schema_$(HELM_SCHEMA_VERSION)

.PHONY: gen-schma
gen-schema: $(HELM_SCHEMA) ## Generates schema.
	$(HELM_SCHEMA) -l debug

$(HELM_SCHEMA): OS := $(shell go env GOOS)
$(HELM_SCHEMA): ARCH := $(shell go env GOARCH | sed 's/amd64/x86_64/')
$(HELM_SCHEMA): URL = https://github.com/dadav/helm-schema/releases/download/$(HELM_SCHEMA_VERSION)/$(notdir $(HELM_SCHEMA))_$(OS)_$(ARCH).tar.gz
$(HELM_SCHEMA): TMP_DIR := $(shell TMPDIR=${TMPDIR:/tmp} mktemp -d)
$(HELM_SCHEMA):
	curl -L --fail -s "$(URL)" | tar -C $(TMP_DIR) -zxv helm-schema
	install -D $(TMP_DIR)/helm-schema $(HELM_SCHEMA)
	rm -rf $(TMP_DIR)
