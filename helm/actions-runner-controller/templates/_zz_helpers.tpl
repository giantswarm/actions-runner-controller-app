{{- define "actions-runner-controller.managerPodSecurityPolicyName" -}}
{{- include "actions-runner-controller.fullname" . }}-pod-security-policy
{{- end }}

{{- define "actions-runner-controller.managerNetworkPolicy" -}}
{{- include "actions-runner-controller.fullname" . }}-network-policy
{{- end }}
