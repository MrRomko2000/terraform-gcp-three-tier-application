provider "google" {
    credentials = "${file("team3terraformproject-49409131a305.json")}"
   project = "team3terraformproject" 
   region = var.bucket_config["region"]
	zone = var.bucket_config["zone"]
}