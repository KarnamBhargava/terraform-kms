

resource "aws_kms_alias" "kms-alias" {
  name          = var.key-alias
  target_key_id = aws_kms_key.kms_key.key_id
}
