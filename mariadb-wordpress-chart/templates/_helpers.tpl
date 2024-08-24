{{- define "wordpress.persistence" }}
persistence:
  enabled: {{ .Values.persistence.enabled | default true }}
  storageClass: {{ .Values.persistence.storageClass | default "default" }}
  size: {{ .Values.persistence.size | default "1Gi" }}
{{- end }}
