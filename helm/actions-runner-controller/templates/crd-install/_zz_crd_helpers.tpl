{{- define "actions-runner-controller.crdInstallName" -}}
{{- printf "%s-%s" ( include "actions-runner-controller.name" . ) "crd-install" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{- define "actions-runner-controller.crdInstallAnnotations" -}}
"helm.sh/hook": "pre-install,pre-upgrade"
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
{{- end -}}

{{- define "actions-runner-controller.crdInstallLabel" -}}
{{- printf "%s-%s" ( include "actions-runner-controller.crdInstallName" . ) "hook" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}
