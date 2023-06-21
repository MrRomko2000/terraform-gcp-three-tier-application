resource "google_compute_network" "vpc" {
   name = "team3-vpc-terrafom"
   auto_create_subnetworks = "true"
   routing_mode = "GLOBAL"
}
