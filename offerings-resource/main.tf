
resource "ibm_cm_offering_instance" "cm_offering_instance_instance" {
   label = var.instance_label 
   catalog_id = var.catalog_id
   offering_id = var.offering_id
   kind_format = var.kind_format
   version = var.offering_version
   cluster_id = var.cluster_id
   cluster_region = var.region
   cluster_namespaces = var.cluster_namespaces
   cluster_all_namespaces = var.cluster_all_namespaces
   resource_group_id = var.resource_group_id
   channel = var.channel
   install_plan = var.install_plan
}
