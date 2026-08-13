
# Multi-Cloud Infrastructure with Terraform

**Azure + AWS + GCP** | Modular Design | Remote State | Cost Optimized

This project provisions consistent foundational infrastructure across **Azure, AWS, and GCP** using reusable Terraform modules.

---

## Architecture Overview

| Component      | Azure                          | AWS                            | GCP                            |
|----------------|--------------------------------|--------------------------------|--------------------------------|
| Network        | VNet + Subnets + NSG           | VPC + Subnets + Security Group | VPC Network + Subnet + Firewall |
| Compute        | Linux VM (Standard_B1s)        | EC2 (t2.micro)                 | Compute Engine (e2-micro)      |
| Storage        | Storage Account + Container    | S3 Bucket                      | Cloud Storage Bucket           |
| Remote State   | Azure Storage + Locking        | S3 + DynamoDB                  | Google Cloud Storage           |

---

## Project Structure

```text
multi-cloud-terraform-azure-aws-gcp/
├── modules/
│   ├── network/              # Azure Network
│   ├── compute/              # Azure Compute
│   ├── storage/              # Azure Storage
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
```

---

## Features

- Fully modular and reusable code
- Remote state with locking on all three clouds
- Least privilege security (SSH only)
- Free-tier / lowest cost instance types
- Easy destroy & recreate of compute resources

---

## How to Use

### Prerequisites

- Terraform >= 1.5
- Azure CLI, AWS CLI, and gcloud CLI
- Authenticated accounts on Azure, AWS, and GCP

### Example: Deploy on Azure

```bash
cd environments/azure
terraform init
terraform plan -var="admin_password=YourPassword"
terraform apply -var="admin_password=YourPassword"
```

### Destroy only Compute (to save money)

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
- Compute uses the cheapest eligible sizes
- Destroy VMs when not in use

---

## Author

**Sumer Pathan**  
Cloud & DevOps Portfolio Project | 2026
```

