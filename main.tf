terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.43.0"
    }
  }
}

variable "project_id" {
  default = "quiet-chalice-465614-d6"
}

provider "google" {
  project     = var.project_id
  region      = "europe-west1"
  zone        = "europe-west1-b"
  credentials = file("../credentials.json")
}
##########################################


# Nueva red virtual
resource "google_compute_network" "kc-terraform-vpc" {
  project     = var.project_id
  description = "VPC creada mediante Terraform."
  name        = "kc-terraform-vpc"
}



# Bucket de almacenamiento en Cloud Storage
resource "google_storage_bucket" "kc-terraform-bucket" {
  name          = "kc-terraform-bucket"
  location      = "EU"
  force_destroy = true
  storage_class = "ARCHIVE"
}



# Aprovisionar una maquina virtual enlazada con la red virtual creada anteriormente
resource "google_compute_instance" "kc-terraform-vm" {
  name         = "kc-terraform-vm"
  machine_type = "e2-micro"

  tags = ["terraform"]

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-noble-amd64-v20250709"
    }
  }

  network_interface {
    network = google_compute_network.kc-terraform-vpc.name
    access_config {

    }
  }

  metadata_startup_script = "apt update && apt upgrade -y"
}
output "direccion_ip_externa_vm" {
  description = "Dirección IP externa de la VM"
  value       = google_compute_instance.kc-terraform-vm.network_interface[0].access_config[0].nat_ip
}