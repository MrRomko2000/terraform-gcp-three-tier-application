resource "google_compute_network" "vpc-network" {
  project                 = "team3terraformproject"
  name                    = "team3-vpc"
  auto_create_subnetworks = "true"
  routing_mode            = "GLOBAL"
}