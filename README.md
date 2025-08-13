# terraform-EC2-instance-on-AWS
atomation creation an instance on AWS using terraform 
# Automating EC2 Instance Creation on AWS using Terraform (Infrastructure as Code)

This project demonstrates how to automatically create an **AWS EC2 instance** using **Terraform**.

## Prerequisites

Before running this project, you need:

1. **Terraform** installed on your system:  
   ```bash
   terraform -v

If not installed, follow Terraform installation guide.

    An AWS account with permissions to create EC2 instances.

    AWS Access Key ID and AWS Secret Access Key for authentication.

        You can create and download these from the AWS Console under:
        IAM → Users → Security Credentials → Create Access Key.

    An AMI ID for the OS you want to use.

        Find one in AWS Console → EC2 → AMIs.

        Make sure the AMI is in the same region you use in main.tf.

Project Structure

    main.tf → Terraform configuration file containing provider details and EC2 resource definition.

Example:

provider "aws" {
  region     = "us-east-1" # your AWS region
  access_key = "xxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxx"
}

resource "aws_instance" "testinstance" {
  ami           = "ami-xxxxxxxxxxxxxx"
  instance_type = "t3.micro"

  tags = {
    Name = "your-instance-name"
  }
}

Steps to Automate EC2 Creation
1️⃣ Write the Terraform configuration

Create a file named main.tf and paste the configuration above.
Replace:

    region → your preferred AWS region.

    access_key & secret_key → your AWS IAM credentials.

    ami → the AMI ID of your desired OS.

    Name tag → a friendly name for your instance.

2️⃣ Initialize Terraform

From the project directory, run:

terraform init

This downloads the AWS provider plugin.
3️⃣ Validate the configuration

terraform validate

This ensures the syntax is correct.
4️⃣ Preview the changes

terraform plan

This shows what Terraform will create.
5️⃣ Apply the configuration

terraform apply -auto-approve

Terraform will:

    Authenticate with AWS using your credentials.

    Create an EC2 instance with the specified AMI and instance type.

6️⃣ Verify the instance

Go to AWS Console → EC2 → Instances and check if your instance is running.
7️⃣ Destroy the instance (to avoid charges)

When done, remove the instance:

terraform destroy -auto-approve

Notes

    t3.micro is not Free Tier eligible — if you want Free Tier, use t2.micro or t3.micro within your free trial limits.

    Security Warning: Hardcoding access_key and secret_key in main.tf is not recommended for production. Use environment variables or AWS CLI profiles instead
