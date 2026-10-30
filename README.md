This project demonstrates a highly available, fault-tolerant web application infrastructure deployed on Amazon Web Services (AWS). It was completed as the final project for the AWS Cloud Computing Internship program, showcasing practical cloud engineering and infrastructure automation skills.

🛠️ Architecture & Technologies Used
Amazon EC2: Deployed Linux web servers using custom Amazon Machine Images (AMIs).

Infrastructure Automation (Bash): Utilized shell scripting within EC2 User Data to bootstrap instances, automating the installation and configuration of the Apache HTTP Server without human intervention.

High Availability & Scaling: Configured an Elastic Load Balancer (ELB) to distribute incoming application traffic across multiple EC2 instances, preventing single points of failure.

Networking & Security:

Deployed instances within a secure Virtual Private Cloud (VPC).

Configured Security Groups to strictly allow inbound HTTP (Port 80) and SSH (Port 22) traffic.

Utilized Elastic IPs for static public endpoint management.

Amazon S3: Configured secure object storage for application assets and backups.

⚙️ Deployment Steps
Launched an Amazon Linux 2023 EC2 instance.

Injected the user-data.sh bash script during the launch process to automate web server provisioning.

Generated an AMI from the fully configured golden instance.

Deployed an Elastic Load Balancer (ELB) and registered target groups for seamless traffic distribution.

Verified the automated HTML deployment via the Load Balancer's DNS endpoint.

📂 Repository Contents
user-data.sh: The automated bootstrap script used for server configuration.

README.md: Comprehensive project documentation.

Developed by printsyntaxerror | Final Project for EWB Tech Academy AWS Internship
