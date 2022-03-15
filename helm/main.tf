terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

data "ibm_container_cluster_config" "clusterConfig" {
  cluster_name_id   = var.cluster_id
  resource_group_id = var.resource_group_id
  config_dir        = var.config_dir
}

provider "helm" {
  version         = "2.1.2"
  kubernetes {
    config_path = data.ibm_container_cluster_config.clusterConfig.config_file_path
  }
}

resource "random_id" "name" {
  byte_length = 4
}

resource "helm_release" "test" {
  name      = "test-chart${random_id.name.hex}"
  chart      = var.chart_name
  wait       = false
}
