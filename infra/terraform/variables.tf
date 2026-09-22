variable "location" {
  type        = string
  description = "Azure region"
  default     = "canadacentral"
}

variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "hyperv-migration"
}

variable "hub_vnet_cidr" {
  type        = string
  description = "Hub VNet CIDR"
  default     = "10.0.0.0/16"
}

variable "spoke_vnet_cidr" {
  type        = string
  description = "Spoke VNet CIDR"
  default     = "10.10.0.0/16"
}

variable "onprem_cidr" {
  type        = string
  description = "On-premise network CIDR"
}

variable "vpn_shared_key" {
  type        = string
  description = "IPsec shared key"
  sensitive   = true
}
