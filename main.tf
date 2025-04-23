

resource "aws_kms_alias" "kms-alias" {
  name          = var.key-lias
  target_key_id = aws_kms_key.kms_key.key_id
}
