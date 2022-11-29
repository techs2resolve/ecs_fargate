variable "region" {
  default = 'ap-south-1'
}

variable "remote_state_key" {}
variable "remote_state_bucket" {}


########app variables

variable "ecs_service_name" {}
variable "docker_image_url" {}
variable "docker_container_port" {}
variable "spring_profile" {}
variable "memory" {}

variable "desired_task_number" {}
