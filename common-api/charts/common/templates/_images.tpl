{{/*
Return the proper image name
*/}}
{{- define "common.images.image" -}}
  {{- $fullPath:="" -}}
  {{- $registry:="" -}}
  {{- $repository:="" -}}
  {{- $tag:="" -}}

  {{- if .Values.image -}}
  {{- $fullPath = .Values.image.fullPath | default "" -}}
  {{- $registry = .Values.image.registry | default "" -}}
  {{- $repository = .Values.image.repository | default "" -}}
  {{- $tag = .Values.image.tag | default "" -}}
  {{- end -}}

  {{- if .Values.global -}}
  {{- $fullPath = .Values.global.image.fullPath | default $fullPath -}}
  {{- $registry = .Values.global.image.registry | default $registry -}}
  {{- $repository = .Values.global.image.repository | default $repository -}}
  {{- $tag = .Values.global.image.tag | default $tag -}}
  {{- end -}}

  {{- if $fullPath -}}
    {{- print $fullPath -}}
  {{- else -}}
    {{- $registry = ( $registry  | required "image registry is required" ) -}}
    {{- $repository = ( $repository | required "image repository is required" ) -}}
    {{- $tag = ( $tag | required "required image tag is required" ) -}}

    {{- printf "%s/%s:%s" $registry $repository $tag -}}
  {{- end -}}
{{- end -}}
