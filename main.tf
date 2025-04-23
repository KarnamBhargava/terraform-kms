terraform {
  backend "s3" {
    bucket = "interns-backstage.io-statefile"
    key    = "project/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}



resource "aws_kms_key" "kms_key" {
  description             = var.description
}



resource "aws_kms_alias" "kms-alias" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.kms_key.key_id
}
