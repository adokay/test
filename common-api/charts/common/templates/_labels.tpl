{{/*
Labels to use on deploy.spec.selector.matchLabels and svc.spec.selector
*/}}
{{- define "common.labels.matchLabels" -}}
app.kubernetes.io/name: {{ include "common.names.chart" . }}
app.kubernetes.io/instance: {{ include "common.names.name" . }}
{{- end -}}

{{/*
Labels to use on migration job
*/}}
{{- define "common.labels.job" -}}
app: {{ include "common.names.name" . }}
type: db-migration
{{- end -}}

{{/*
Kubernetes standard labels
*/}}
{{- define "common.labels.standard" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{ printf "%s-%s" .Release.Namespace .Release.Name }}
app.kubernetes.io/part-of: {{ .Release.Namespace }}
app.kubernetes.io/instance: {{ include "common.names.name" . }}
{{- end -}}
