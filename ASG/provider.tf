provider "google" {
    credentials = "${file("team3terraformproject-49409131a305.json")}"
   project = "team3terraformproject" 
   region = var.vm_config["region"]
	zone = var.vm_config["zone"]
}