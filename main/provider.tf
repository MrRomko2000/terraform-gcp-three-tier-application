terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.70.0"
    }
  }
}

provider "google" {
  region  = var.region
  zone    = var.zone
  project = var.project_name
}