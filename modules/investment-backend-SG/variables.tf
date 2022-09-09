variable "VPC_CIDR_block" {
  type        = string
  description = "The CIDR block of the VPC"
  default     = "10.0.0.0/16"
}

variable "VPC_id" {
  type        = any
  description = "VPC id"
}

variable "common_tags" {
  type        = map(string)
  description = "VPC id"
}