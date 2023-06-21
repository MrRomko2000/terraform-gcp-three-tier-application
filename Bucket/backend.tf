terraform {
 backend "gcs" {
    
   bucket  = "terraform-backend-project3-bucket-tfstate"
   prefix  = "terraform/state"
 }
}