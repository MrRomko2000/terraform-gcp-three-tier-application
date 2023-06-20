provider "google" {
    credentials = "${file("team3terraformproject-748133c2479f.json")}"
    project = "	team3terraformproject"
    region = var.vm_config["region"]
    zone   = var.vm_config["zone"]


}