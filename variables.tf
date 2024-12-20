# variables.tf

variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
}
variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "azs" {
  description = "The availability zones for the VPC."
  type        = list(string)
}

