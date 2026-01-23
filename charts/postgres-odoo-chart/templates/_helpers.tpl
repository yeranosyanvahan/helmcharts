{{- define "name" -}}
  {{- default .Values.ingress.hostname .Values.name }}
{{- end }}
