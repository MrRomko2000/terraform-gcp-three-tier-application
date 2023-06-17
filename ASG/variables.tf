variable "vm_config" {
  type    = map(any)
  default = {
    vpc_name      = "team3-vpc"
    region        = "us-east1"
    zone          = "us-east1-c"
    instance_name = "team3-instance"
    machine_type  = "n1-standard-1"
    image         = "centos-cloud/centos-7"
    firewall_name = "http-fw"
    network_tags  = "http-server"
  }
}

variable "labels" {
  type    = map(any)
  default = {
    env   = "stage"
    team  = "team3"
    name  = "team3vm"
    owner = "Team3GCP"
  }
}

variable "asg_config" {
  type    = map(any)
  default = {
    region                      = "us-east1"
    zone                        = "us-east1-c"
    target-pool-name            = "team3-target-pool"
    autoscaler                  = "team3-autoscaler"
    max_replicas                = 4
    min_replicas                = 1
    cooldown_period             = 60
    target                      = 0.5
    instance_group_manager_name = "group-manager"
    instance_template_name      = "my-instance-template"
    machine_type                = "n1-standard-1"
    source_image                = "centos-cloud/centos-7"
    network_tags                = "http-server"
    firewall_name               = "http-fw"
    health_check_name           = "team3-health-check"
    backend_service_name        = "team3-backend-service"
    url_map_name                = "team3-url-map"
    forwarding_rule_name        = "team3-forwarding-rule"  # Add this line
  }
}
