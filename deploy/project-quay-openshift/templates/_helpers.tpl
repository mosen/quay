{{- define "name" -}}
project-quay
{{- end -}}

{{- define "version" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" -}}
{{- end -}}
