{{- define "chart.createNamespace" -}}
{{- $namespaceOverride := .Values.namespaceOverride -}}

{{- if and $namespaceOverride (not (lookup "v1" "Namespace" "" $namespaceOverride)) }}
apiVersion: v1
kind: Namespace
metadata:
  name: {{ $namespaceOverride | quote }}
---
{{- end }}
{{- end -}}