variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "tw-devops-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-app"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "abdullah.khan@techwards.co"
}