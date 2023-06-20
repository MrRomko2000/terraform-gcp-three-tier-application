provider "google" {
    credentials = "${file("team3terraformproject-ce3696cf5de0.json")}"
    project = "	team3terraformproject"
    region = var.vm_config["region"]
    zone   = var.vm_config["zone"]


}