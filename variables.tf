variable "project_name" {
  
}

variable "environment" {
  
}
variable "vpc_cidr" {
  
}
variable "enable_dns_hostnames" {
  default = true
}

variable "common_tags" {
  type = map
  #default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "Please provide 2 valid public subnet cidr"
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "Please provide 2 valid private subnet cidr"
  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "Please provide 2 valid database subnet cidr"
  }
}

variable "database_subnet_tags" {
  default = {}
}
variable "nat_gateway_tags" {
 default = {} 
}
variable "public_route_table_tags" {
 default = {}
}
variable "private_route_table_tags" {
 default = {}
}
variable "database_route_table_tags" {
 default = {}
}
variable "is_peering_required" {
  default = true
}
variable "vpc_peering_tags" {
  default = {}
}