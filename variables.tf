variable "cloud" {
  default = "azure"
}

variable "owner" {
  default = "tsb-sandbox@tetrate.io"
}

locals {
  cloud = {
    aws   = module.aws_k8s
    azure = module.azure_k8s
  }
}

locals {
  jumpbox = {
    aws   = module.aws_jumpbox[0]
    azure = module.azure_jumpbox
  }
}

locals {
  base = {
    aws   = module.aws_base[0]
    azure = module.azure_base
  }
}

variable "name_prefix" {
  description = "name prefix"
}

variable "cidr" {
  description = "cidr"
  default     = "172.20.0.0/16"
}

variable "tsb_image_sync_username" {
}

variable "tsb_image_sync_apikey" {
}

variable "tsb_helm_username" {
  default = null
}

variable "tsb_helm_password" {
  default = null
}

variable "tsb_username" {
  default = "admin"
}

variable "tsb_password" {
}

variable "tsb_version" {
  default = "1.5.0"
}
variable "tsb_helm_version" {
  default = null
}
variable "tsb_fqdn" {
  default = "toa.cx.tetrate.info"
}
variable "dns_zone" {
  default = "cx.tetrate.info"
}

variable "tsb_org" {
  default = "tetrate"
}

variable "mp_as_tier1_cluster" {
  default = true
}
variable "jumpbox_username" {
  default = "tsbadmin"
}
variable "cluster_id" {
  default = 1
}

variable "aws_region" {
  default = "eu-west-1"
}

variable "azure_region" {
  default = "eastus"
}

variable "gcp_region" {
  default = "us-west1"
}

variable "gcp_org_id" {
  default = "775566979306"
}

variable "gcp_billing_id" {
  default = "0183E5-447B34-776DEB"
}
variable "aws_eks_k8s_version" {
  default = "1.22"
}

variable "azure_aks_k8s_version" {
  default = "1.23.5"
}

variable "gcp_gke_k8s_version" {
  default = "1.21.12-gke.1500"
}

variable "azure_aks_app_clusters_count" {
  default = 1
}
variable "aws_eks_app_clusters_count" {
  default = 0
}

variable "gcp_gke_app_clusters_count" {
  default = 0
}

