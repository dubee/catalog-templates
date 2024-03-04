resource "ibm_is_instance" "validation_instance" {
  provider = catalog
  name    = var.vsi_instance_name
  profile = var.vpc_profile
  
  catalog_offering {
    version_crn = var.version_crn
    plan_crn = var.plan_crn
  }

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

  resource_group = var.resource_group

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}
