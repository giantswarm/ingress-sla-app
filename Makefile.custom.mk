##@ Custom

HELM_SCHEMA_VERSION := 0.11.1
HELM_SCHEMA := ./bin/helm-schema_$(HELM_SCHEMA_VERSION)

.PHONY: gen-schma
gen-schema: TMP_SCHEMA := $(shell TMPDIR=${TMPDIR:/tmp} mktemp)
gen-schema: $(HELM_SCHEMA) bin/jsonschema2md ## Generates schema.
	$(HELM_SCHEMA)
	jq '.title = "Values"' ./helm/ingress-sla-app/values.schema.json > $(TMP_SCHEMA)
	mv $(TMP_SCHEMA) ./helm/ingress-sla-app/values.schema.json
	rm -rf ./docs/schema && mkdir -p ./docs/schema
	docker run -it -v ${PWD}:/workdir:Z --rm ingress-sla-app-jsonschema2md -n -d /workdir/helm/ingress-sla-app -o /workdir/docs/schema -h false


$(HELM_SCHEMA): OS := $(shell go env GOOS)
$(HELM_SCHEMA): ARCH := $(shell go env GOARCH | sed 's/amd64/x86_64/')
$(HELM_SCHEMA): URL = https://github.com/dadav/helm-schema/releases/download/$(HELM_SCHEMA_VERSION)/$(notdir $(HELM_SCHEMA))_$(OS)_$(ARCH).tar.gz
$(HELM_SCHEMA): TMP_DIR := $(shell TMPDIR=${TMPDIR:/tmp} mktemp -d)
$(HELM_SCHEMA):
	curl -L --fail -s "$(URL)" | tar -C $(TMP_DIR) -zxv helm-schema
	install -D $(TMP_DIR)/helm-schema $(HELM_SCHEMA)
	rm -rf $(TMP_DIR)

bin/jsonschema2md:
	docker build -t ingress-sla-app-jsonschema2md -f jsonschema2md.dockerfile ./bin
