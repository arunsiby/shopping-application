variable "project_name" {

  type        = string
  description = "Project name"
}

variable "project_env" {

  type        = string
  description = "Project Environment"
}


variable "ami_id" {

  type        = string
  description = "ami id"
}



locals {
   timestamp    = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
   image_name   = "${var.project_name}-${var.project_env}-${local.timestamp}"
 }
