resource "aws_kms_key" "kms_key" {
  description         = var.description
  enable_key_rotation = true
}

resource "aws_kms_alias" "kms_alias" {
  name          = var.key_alias
  target_key_id = aws_kms_key.kms_key.key_id
}
