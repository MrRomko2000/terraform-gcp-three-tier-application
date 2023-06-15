resource "google_compute_autoscaler" "asg" {
zone = var.asg_config["zone"]
name = var.asg_config["autoscaler"]
target = google_compute_instance_group_manager.gmanager.id
autoscaling_policy {
	max_replicas = var.asg_config["max_replicas"]
	min_replicas = var.asg_config["min_replicas"]
	cooldown_period = var.asg_config["cooldown_period"]
cpu_utilization {
	target = var.asg_config["target"]
	}
}}
resource "google_compute_instance_template" "team3-template" {
name = var.asg_config["instance_template_name"]
machine_type = var.asg_config["machine_type"]
can_ip_forward = false
metadata_startup_script = file("startup.sh")
metadata = {
	ssh-keys = "centos7:${file("~/.ssh/id_rsa.pub")}"
}
disk {
	source_image = var.asg_config["source_image"]
}
network_interface {
	network = google_compute_network.globalvpc.self_link
	access_config {
	}
}}