resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "terraform-backend-project3-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  
  versioning {
    enabled = true
  }

  project = "team3terraformproject"
}