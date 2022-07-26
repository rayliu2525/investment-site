variable "VPC_CIDR_block" {
  type = string
  description = "The CIDR block of the VPC"
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  description = "enable dns hostnames"
  default = true
}