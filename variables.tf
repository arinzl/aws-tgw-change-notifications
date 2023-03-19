
variable "region" {
  description = "AWS Region"
  default     = "ap-southeast-2"
  type        = string

}

variable "environment" {
  description = "AWS environment name"
  type        = string

}

variable "app_name" {
  description = "Applicaiton Name"
  type        = string

}

variable "ManagedByLocation" {
  description = "IaC location"
  default     = "https://github.com/arinzl"
}






