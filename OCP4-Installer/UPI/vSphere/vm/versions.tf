terraform {
  required_version = ">= 0.13"
  required_providers {
    ignition = {
      //source = "terraform-providers/ignition"
      source = "community-terraform-providers/ignition"
      version = "2.1.2"
    }
    vsphere = {
      source = "hashicorp/vsphere"
    }
  }
}
