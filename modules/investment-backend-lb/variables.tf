variable "ALB_SG_id" {
  type        = string
  description = "ALB security group"
}

variable "subnet1_id" {
  type        = string
  description = "subnet1 id"
}

variable "subnet2_id" {
  type        = string
  description = "subnet2 id"
}

variable "common_tags" {
  type        = map(string)
  description = "resource tags"
}

variable "VPC_id" {
  type        = string
  description = "vpc id"
}

variable "web1_id" {
  type        = string
  description = "web1 id"
}

variable "web2_id" {
  type        = string
  description = "web2 id"
}