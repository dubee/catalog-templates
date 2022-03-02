resource "ibm_is_subnet" "validation" {
  name            = "validation-subnet"
  vpc             = var.vpc_id
  zone            = var.subnet_zone
  ipv4_cidr_block = var.subnet_ipv4_cidr_block
  ip_version      = "ipv4"
}

resource "ibm_is_ssh_key" "validation" {
  name       = "validation-ssh"
  public_key = var.ssh_public_key
}

resource "ibm_is_instance" "validation" {
  name    = "validation-instance"
  image   = var.vsi_id
  profile = var.vpc_profile

  primary_network_interface {
    subnet = ibm_is_subnet.validation.id
  }

  network_interfaces {
    name   = "eth1"
    subnet = ibm_is_subnet.validation.id
  }

  vpc  = var.vpc_id
  zone = var.subnet_zone
  keys = [ibm_is_ssh_key.validation.id]

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}