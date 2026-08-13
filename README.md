# Multi-Cloud Infrastructure with Terraform

**Azure + AWS + GCP** | Modular Terraform | Remote State | Cost Optimized

This project provisions identical foundational infrastructure across three major cloud providers using reusable Terraform modules.

---

## Architecture Overview

| Component       | Azure                              | AWS                            | GCP                            |
|-----------------|------------------------------------|--------------------------------|--------------------------------|
| Network         | VNet + Public/Private Subnets + NSG | VPC + Subnets + Security Group | VPC Network + Subnet + Firewall |
| Compute         | Linux VM (B1s)                     | EC2 (t2.micro)                 | Compute Engine (e2-micro)      |
| Storage         | Storage Account + Container        | S3 Bucket                      | Cloud Storage Bucket           |
| Remote State    | Azure Storage + Locking            | S3 + DynamoDB                  | GCS                            |

---

## Project Structure

multi-cloud-terraform-azure-aws-gcp/
├── modules/
│   ├── network/               # Azure
│   ├── compute/               # Azure
│   ├── storage/               # Azure
│   ├── aws-network/
│   ├── aws-compute/
│   ├── aws-storage/
│   ├── gcp-network/
│   ├── gcp-compute/
│   └── gcp-storage/
├── environments/
│   ├── azure/
│   ├── aws/
│   └── gcp/
└── README.md


---

## Features

- Fully modular design
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


Destroy Compute only (to save money)
Bash
#Azure
 terraform destroy -target=module.compute -var="admin_password=YourPassword"

# AWS
terraform destroy -target=module.compute -var="key_name=YourKey"

# GCP
terraform destroy -target=module.compute -var="project_id=YourProjectID"

Cost Control

Networking and storage are free or near-free
Compute instances use the cheapest eligible sizes
Destroy VMs when not in use to avoid unnecessary charges


Author
Sumer Pathan
Cloud & DevOps Portfolio Project | 2026