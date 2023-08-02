{{- define "check-url" }}
{{- $length := len .Values.url -}}
{{- if (gt $length 10)}}
{{- fail "url is too long, has to be below 11 chars." -}}
{{- end}}
{{- end -}}
