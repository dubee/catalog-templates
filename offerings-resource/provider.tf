provider "ibm" {
  region           = var.region
}
terraform {
  required_providers {
    ibm = {
	  # source is mandatory for community providers
      source = "IBM-Cloud/ibm" 
      version = "~> 1.21, >= 1.21.1"
    }
  }
}
