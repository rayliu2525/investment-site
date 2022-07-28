variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "subnet1_id" {
  type        = string
  description = "subnet id"
}

variable "subnet2_id" {
  type        = string
  description = "subnet id"
}

variable "SG_id" {
  type        = string
  description = "security group id"
}

variable "common_tags" {
  type        = map(string)
  description = "resource tags"
}