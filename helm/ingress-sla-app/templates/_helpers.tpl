{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "ingress-sla-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ingress-sla-app.chart" -}}
{{- printf "%s-%s" .Chart.Name $.Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "ingress-sla-app.labels.selector" -}}
app.kubernetes.io/name: {{ include "ingress-sla-app.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "ingress-sla-app.labels.common" -}}
{{ include "ingress-sla-app.labels.selector" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
application.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/service-type: "managed"
helm.sh/chart: {{ include "ingress-sla-app.chart" . | quote }}
{{- end -}}

{{/*
Ingress name in the given context
*/}}
{{- define "ingress-sla-app.ingress.name" -}}
{{ include "ingress-sla-app.name" .root }}-{{ .context.ingressClass }}-blackbox
{{- end -}}

{{/*
Ingress host in the given context
*/}}
{{- define "ingress-sla-app.ingress.host" -}}
{{- $baseDomain := .root.Values.baseDomain -}}
{{- if .baseDomain -}}
  {{- $baseDomain := .context.baseDomain -}}
{{- else if .root.Values.global.checkDefaults.baseDomain -}}
  {{- $baseDomain := .root.Values.global.checkDefaults.baseDomain -}}
{{- end -}}
{{ include "ingress-sla-app.name" .root }}.{{ $baseDomain }}
{{- end -}}

{{/*
ServiceMonitor name in the given context
*/}}
{{- define "ingress-sla-app.serviceMonitor.name" -}}
{{ include "ingress-sla-app.name" .root }}-{{ .context.ingressClass }}-blackbox-http
{{- end -}}

{{/*
ClusterIssuer name in the given context
*/}}
{{- define "ingress-sla-app.certManager.ClusterIssuer.name" -}}
{{- $clusterIssuer := .root.Values.global.checkDefaults.certManager.clusterIssuer.name -}}
{{- if (((.context.certManager).clusterIssuer).name) -}}
  {{- $clusterIssuer := .context.certManager.clusterIssuer.name -}}
{{- end -}}
{{ $clusterIssuer }}
{{- end -}}

{{/*
Blackbox exporter namespaceSelector in the given context
*/}}
{{- define "ingress-sla-app.blackboxExporter.namespaceSelector" -}}
{{- $namespaceSelector := .root.Values.global.checkDefaults.blackboxExporter.namespaceSelector -}}
{{- if ((.context.blackboxExporter).namespaceSelector) -}}
  {{- $namespaceSelector := .context.blackboxExporter.namespaceSelector -}}
{{- end -}}
{{ toYaml $namespaceSelector }}
{{- end -}}


{{/*
Blackbox exporter selector in the given context
*/}}
{{- define "ingress-sla-app.blackboxExporter.selector" -}}
{{- $selector := .root.Values.global.checkDefaults.blackboxExporter.selector -}}
{{- if ((.context.blackboxExporter).selector) -}}
  {{- $selector := .context.blackboxExporter.selector -}}
{{- end -}}
{{ toYaml $selector }}
{{- end -}}
