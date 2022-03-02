variable "vpc_id" {
    description = "ID of the VPC to deploy to"
    type = string
}

variable "subnet_zone" {
    description = "Zone of the subnet"
    type = string
}

variable "vsi_id" {
    description = "ID of VSI to deploy"
    type = string
}

variable "ssh_public_key" {
    description = "SSH public key"
    type = string
}

variable "vpc_profile" {
    description = "Profile of VPC"
    type = string
}

variable "subnet_ipv4_cidr_block" {
    description = "IPv4 CIDR block"
    type = string
}