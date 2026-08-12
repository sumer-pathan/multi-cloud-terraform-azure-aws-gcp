# Multi-Cloud Infrastructure with Terraform

**Azure + AWS + GCP** | Modular Terraform | Remote State | Cost Optimized

This project provisions identical foundational infrastructure across three major cloud providers using reusable Terraform modules.

---

## Architecture Overview

| Component     | Azure                                | AWS                             | GCP                              |
|----------------|---------------------------------------|----------------------------------|------------------------------------|
| Network        | VNet + Public/Private Subnets + NSG   | VPC + Subnets + Security Group   | VPC Network + Subnet + Firewall    |
| Compute        | Linux VM (B1s)                        | EC2 (t3.micro)                   | Compute Engine (e2-micro)          |
| Storage        | Storage Account + Container           | S3 Bucket                        | Cloud Storage Bucket               |
| Remote State   | Azure Storage + Locking               | S3 + DynamoDB                    | GCS                                 |

---

## Project Structure

multi-cloud-terraform-azure-aws-gcp/
modules/
network/ (Azure)
compute/ (Azure)
storage/ (Azure)
aws-network/
aws-compute/
aws-storage/
gcp-network/
gcp-compute/
gcp-storage/
environments/
azure/
aws/
gcp/
README.md

Select the current broken tree block in the GitHub editor (from ## Project Structure down through the closing triple-backtick), delete it, and paste this in instead. Then click Preview to confirm it renders as a clean indented block, and hit Commit changes.




⚡
Enhance Prompt


---

## Features

- Fully modular design, reusable across environments
- Remote state with locking on all three clouds
- Least-privilege security rules (SSH only)
- Free-tier / lowest-cost instance types
- Easy destroy & recreate of compute resources to control cost

---

## How to Use

### Prerequisites

- Terraform >= 1.5
- Azure CLI / AWS CLI / gcloud CLI
- Authenticated accounts on all three clouds

### Deploy Example (Azure)

```bash
cd environments/azure
terraform init
terraform plan -var="admin_password=YourPassword"
terraform apply -var="admin_password=YourPassword"
```

### Deploy Example (AWS)

```bash
cd environments/aws
terraform init
terraform plan -var="key_name=YourKey"
terraform apply -var="key_name=YourKey"
```

### Deploy Example (GCP)

```bash
cd environments/gcp
terraform init
terraform plan -var="project_id=YourProjectID"
terraform apply -var="project_id=YourProjectID"
```

> Tip: instead of passing `-var` every time, store these values in a gitignored `terraform.tfvars` file inside each environment folder.

---

## Destroy Compute Only (to save money)

```bash
# Azure
terraform destroy -target=module.compute -var="admin_password=YourPassword"

# AWS
terraform destroy -target=module.compute -var="key_name=YourKey"

# GCP
terraform destroy -target=module.compute -var="project_id=YourProjectID"
```

---

## Cost Control

- Networking and storage are free or near-free
- Compute instances use the cheapest eligible, free-tier-friendly sizes
- Destroy VMs when not in use to avoid unnecessary charges
- Remote state backends (S3/DynamoDB, GCS, Azure Storage) cost pennies per month at this scale

---

## Author

**Sumer Pathan**
Cloud & DevOps Portfolio Project | 2026
