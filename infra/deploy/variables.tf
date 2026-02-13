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