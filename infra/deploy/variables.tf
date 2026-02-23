variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "ra"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "abdullah.khan@techwards.co"
}

variable "db_username" {
  description = "Username for the recipe app api database"
  default     = "recipeapp"
}

variable "db_password" {
  description = "Password for the Terraform database"
}

variable "ecr_proxy_image" {
  description = "Path to the ECR repo with the proxy image"
}

variable "ecr_app_image" {
  description = "Path to the ECR repo with the API image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
}