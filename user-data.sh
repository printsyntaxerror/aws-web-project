#!/bin/bash

# System packages ko update karein
yum update -y

# Apache Web Server install karein
yum install -y httpd

# Apache service ko start aur enable karein taaki server restart hone par band na ho
systemctl start httpd
systemctl enable httpd

# Resume ke liye ek impressive HTML landing page create karein
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AWS Cloud Architecture Project</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #232F3E; color: white; text-align: center; padding: 50px; }
        h1 { color: #FF9900; }
        .container { background: #1a222d; padding: 40px; border-radius: 12px; box-shadow: 0px 4px 15px rgba(0,0,0,0.5); display: inline-block; border-top: 5px solid #FF9900; }
        .footer { margin-top: 30px; font-size: 0.9em; color: #888; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Highly Available Cloud Infrastructure</h1>
        <p>This web server was automatically provisioned using <b>AWS EC2 User Data</b>.</p>
        <p>Traffic is seamlessly distributed via <b>Elastic Load Balancer (ELB)</b>.</p>
        <br>
        <h3>Project Deployed By: printsyntaxerror</h3>
    </div>
    <div class="footer">
        <p>EWB Tech Academy | AWS Internship Final Submission</p>
    </div>
</body>
</html>
EOF