{{/*
Annotations for jobs
*/}}
{{- define "common.annotations.job" -}}
"helm.sh/hook": pre-install,pre-upgrade
"helm.sh/hook-weight": "0"
"helm.sh/hook-delete-policy": hook-succeeded
{{- end -}}

