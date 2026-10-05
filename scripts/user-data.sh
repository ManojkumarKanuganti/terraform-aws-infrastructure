#!/bin/bash

dnf update -y
dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform AWS Infrastructure</title>
</head>
<body>
    <h1>Infrastructure Provisioned Using Terraform</h1>
    <p>EC2 Web Server is running successfully.</p>
    <p>Project: Infrastructure as Code for Automated Cloud Infrastructure Provisioning Using Terraform</p>
</body>
</html>
EOF