# Network Security Group definition
variable "create_rg" {
  description = "Boolean for managing rg creation"
  default     = false
}

variable "resource_group_name" {
  default     = "nsg_rg"
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region"
}

variable "security_group_name" {
  description = "Network security group name"
  default     = "nsg"
}

variable "tags" {
  description = "The tags to associate with your network security group and potential resource group."
  type        = "map"
  default     = {}
}

# Security Rules definition 

# Predefined rules   
variable "predefined_rules" {
  type    = "list"
  description = "Security rules for the network security group based on rules.tf"
  default = []
}

# Custom security rules
# "[priority, direction, access, protocol, source_port_range, destination_port_range, description]"
# All the fields are required.
variable "custom_rules" {
  description = "Security rules for the network security group using this format name = [priority, direction, access, protocol, source_port_range, destination_port_range, source_address_prefix, destination_address_prefix, description]"
  type        = "list"
  default     = []
}

