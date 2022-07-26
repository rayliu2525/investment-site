variable "VPC_CIDR_block" {
  type = string
  description = "VPC CIDR block"
  default = "10.0.0.0/16"
}

variable "VPC_id" {
  type = string
  description = "VPC id"
}