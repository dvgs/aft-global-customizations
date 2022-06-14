data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-global-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
