resource "ibm_is_instance" "validation_instance" {
  name    = var.vsi_instance_name
  image   = var.vsi_id
  profile = var.vpc_profile

  primary_network_interface {
    subnet = var.subnet_id
  }

  network_interfaces {
    name   = "eth1"
    subnet = var.subnet_id
  }

  vpc  = var.vpc_id
  zone = var.subnet_zone
  keys = [var.ssh_key_id]

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}