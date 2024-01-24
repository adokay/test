{{/*
Expand the name of the chart.
*/}}
{{- define "common.names.chart" -}}
{{- default .Chart.Name .Values.chartNameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "common.names.name" -}}
    {{- print ( .Values.common.nameOverride | default .Release.Name) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the sealedSecret
*/}}
{{- define "common.names.sealedSecret" -}}
{{- printf "%s-sealed-secret" ( include "common.names.name" . ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the infisical secret
*/}}
{{- define "common.names.infisical.secret" -}}
{{- printf "%s-infisical-secret" ( include "common.names.name" . ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the infisical token secret
*/}}
{{- define "common.names.infisical.token" -}}
{{- printf "%s-infisical-token"  ( include "common.names.name" . ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the infisical managed secret
*/}}
{{- define "common.names.infisical.managedSecret" -}}
{{- printf "%s-managed-secret" ( include "common.names.name" . )  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the ingress host secret name
*/}}
{{- define "common.names.ingressCertSecret" -}}
{{- printf "ingress-cert-%s" ( .Release.Name ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the volume name to be mounted
*/}}
{{- define "common.names.volume" -}}
{{- printf "%s-volume" ( include "common.names.name" . ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the rabbitmq user credentials secret
*/}}
{{- define "common.names.rabbitmqCredentials" -}}
{{- print "rabbitmq-credentials" -}}
{{- end -}}

{{/*
name of the cert secret
*/}}
{{- define "common.names.gatewayCertSecret" -}}
{{- printf "%s-cert" .Release.Namespace | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the migration job pod
*/}}
{{- define "common.names.jobPod" -}}
{{- printf "%s-job" .Release.Name  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
name of the migration job
*/}}
{{- define "common.names.job" -}}
{{- printf "%s-%s" ( include "common.names.jobPod" . ) ( randAlphaNum 8 ) | trunc 63 | trimSuffix "-" | lower  -}}
{{- end -}}

{{/*
name of the redis secrets
*/}}
{{- define "common.names.redisSecret" -}}
{{- printf "%s-redis" .Release.Namespace | trunc 63 | trimSuffix "-"  -}}
{{- end -}}
