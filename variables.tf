variable "name" {
  type        = string
  description = " The NAT rule's name."
}

variable "type" {
  type        = string
  description = "NAT type. This can be ipv4 (default), nat64, or nptv6."
  default     = "ipv4"
}

variable "description" {
  type        = string
  description = "The description of the nat rule"
}

variable "source_zones" {
  type        = list(string)
  description = "List of source zones."
}

variable "destination_zone" {
  type        = string
  description = "List of source zones."
}

variable "source_addresses" {
  type        = list(string)
  description = "List of source address(es). default is any"
  default     = ["any"]
}

variable "destination_addresses" {
  type        = list(string)
  description = "List of destination address(es). this is public ip it should be host_ip"
}

variable "to_interface" {
  type        = string
  description = "The interface name. example ethernet1/1"
}

variable "service" {
  type        = string
  description = "The port which should be allowed. default is service-https"
}

# Source Address Translation
variable "sat_type" {
  type        = string
  description = "Type of source address translation. This can be none (default), dynamic-ip-and-port, dynamic-ip, or static-ip"
  default     = "dynamic-ip-and-port"
}
variable "sat_address_type" {
  type        = string
  description = "Source address translation address type. This can be interface-address or translated-address"
  default     = "interface-address"
}

variable "sat_interface" {
  type        = string
  description = "The interface name. example ethernet1/1"
}

# Destination Address Translation
variable "dat_type" {
  type        = string
  description = "Destination address translation type. This should be either static or dynamic. The dynamic option is only available on PAN-OS 8.1+."
  default     = "static"
}
variable "dat_address" {
  type        = string
  description = "The private ip"
}
variable "dat_port" {
  type        = number
  description = "Destination address translation's port number.deafult is 443"
  default     = 443
}



