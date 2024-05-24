{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "ingress-sla.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ingress-sla.chart" -}}
{{- printf "%s-%s" .Chart.Name $.Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "ingress-sla.labels.selector" -}}
app.kubernetes.io/name: {{ include "ingress-sla.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "ingress-sla.labels.common" -}}
{{ include "ingress-sla.labels.selector" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
application.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/service-type: "managed"
helm.sh/chart: {{ include "ingress-sla.chart" . | quote }}
{{- end -}}

{{/*
Ingress name in the given context
*/}}
{{- define "ingress-sla.ingress.name" -}}
{{ include "ingress-sla.name" .root }}-{{ .context.ingressClass }}-blackbox
{{- end -}}

{{/*
Ingress host in the given context
*/}}
{{- define "ingress-sla.ingress.host" -}}
{{- $baseDomain := .root.Values.baseDomain -}}
{{- if .context.baseDomain -}}
  {{- $baseDomain = .context.baseDomain -}}
{{- else if .root.Values.global.ingressSLA.checkDefaults.baseDomain -}}
  {{- $baseDomain = .root.Values.global.ingressSLA.checkDefaults.baseDomain -}}
{{- end -}}
{{ .context.ingressClass }}.{{ include "ingress-sla.name" .root }}.{{ $baseDomain }}
{{- end -}}

{{/*
ServiceMonitor name in the given context
*/}}
{{- define "ingress-sla.serviceMonitor.name" -}}
{{ include "ingress-sla.name" .root }}-{{ .context.ingressClass }}-blackbox-http
{{- end -}}

{{/*
ClusterIssuer name in the given context
*/}}
{{- define "ingress-sla.certManager.ClusterIssuer.name" -}}
{{- $clusterIssuer := .root.Values.global.ingressSLA.checkDefaults.certManager.clusterIssuer.name -}}
{{- if (((.context.certManager).clusterIssuer).name) -}}
  {{- $clusterIssuer = .context.certManager.clusterIssuer.name -}}
{{- end -}}
{{- $clusterIssuer -}}
{{- end -}}

{{/*
Blackbox exporter namespaceSelector in the given context
*/}}
{{- define "ingress-sla.blackboxExporter.namespaceSelector" -}}
{{- $namespaceSelector := .root.Values.global.ingressSLA.checkDefaults.blackboxExporter.namespaceSelector -}}
{{- if ((.context.blackboxExporter).namespaceSelector) -}}
  {{- $namespaceSelector = .context.blackboxExporter.namespaceSelector -}}
{{- end -}}
{{ toYaml $namespaceSelector }}
{{- end -}}


{{/*
Blackbox exporter selector in the given context
*/}}
{{- define "ingress-sla.blackboxExporter.selector" -}}
{{- $selector := .root.Values.global.ingressSLA.checkDefaults.blackboxExporter.selector -}}
{{- if ((.context.blackboxExporter).selector) -}}
  {{- $selector = .context.blackboxExporter.selector -}}
{{- end -}}
{{- if not $selector -}}
  {{- $matchLabels := dict -}}
  {{- $_ := set $matchLabels "app.kubernetes.io/instance" "prometheus-blackbox-exporter" -}}
  {{- $_ := set $matchLabels "app.kubernetes.io/name" "prometheus-blackbox-exporter" -}}
  {{- $selector = dict "matchLabels" $matchLabels -}}
{{- end -}}
{{ toYaml $selector }}
{{- end -}}
