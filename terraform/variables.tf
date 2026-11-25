variable "region" {
  type    = string
  default = "ap-south-2"
}

variable "project_name" {
  type    = string
  default = "ecs-cicd"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "container_port" {
  type    = number
  default = 80
}

# Placeholder image for the first deploy.
# The pipeline replaces it with the ECR image.
variable "initial_image" {
  type    = string
  default = "public.ecr.aws/nginx/nginx:stable-alpine"
}
