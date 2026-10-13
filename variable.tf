variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "Region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone for resources (optional)"
  type        = string
  default     = "us-central1-a"
}

# Network and subnet details
variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "custom-vpc"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "custom-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "192.168.1.0/24"
}
