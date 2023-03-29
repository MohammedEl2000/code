#---/root---

#vpc
variable "project_name" {
  type        = string
  description = "This configures the vpc name"
}
variable "vpc_cidr" {
  type        = string
  description = "This configures the vpc cidr"
}
variable "public_subnet1_az1_cidr" {
  type        = string
  description = "This configures the public subnet1 cidr"
}
variable "public_subnet2_az2_cidr" {
  type        = string
  description = "This configures the public subnet2 cidr"
}
variable "private_subnet1_az1_cidr" {
  type        = string
  description = "This configures the private subnet1 cidr"
}
variable "private_subnet2_az2_cidr" {
  type        = string
  description = "This configures the private subnet2 cidr"
}

#ec2
variable "ami" {}
variable "instance_type" {}
variable "ec2_web_tag_name" {}
variable "keyname" {}

#database
variable "identifier" {}
variable "engine" {}
variable "engine_version" {}
variable "db_name" {}
variable "username" {
  sensitive = true
}
variable "password" {
  sensitive = true
}

#AZURE

variable "subscription_id" {
  type        = string
  description = "Azure subscription"
  # default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_id" {
  type        = string
  description = "Azure Client ID"
  # default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret"
  # default = "XXXXXXXXXXXXXXXXXX"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
  # default = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "resource_group_name" {
  type        = string
  description = ""
  default     = "fyp-project23"
}

variable "location" {
  type        = string
  description = ""
  default     = ""
}

variable "default_tags" {
  description = ""
  type        = map(any)
  default     = {}
}

variable "address_space" {
  type        = string
  description = ""
  default     = ""
}

variable "subnet" {
  type        = string
  description = ""
  default     = ""
}


variable "subnets" {
  type        = list(any)
  description = "The address prefix to use for the subnet."
  default     = ["10.135.20.0/24"]
}
variable "application" {
  type        = string
  description = ""
  default     = ""
}

variable "environment" {
  type        = string
  description = ""
  default     = ""
}

variable "capacity" {
  type        = string
  description = ""
  default     = ""
}
