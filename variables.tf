variable "region" {
  description = "The AWS region to deploy the KMS key."
  type        = string
}

variable "description" {
  description = "A description for the KMS key."
  type        = string
}

variable "key-alias" {
  description = "The alias name for your KMS key (e.g., alias/my-key)."
  type        = string
}

