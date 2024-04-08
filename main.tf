provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4MTWN6T3GHUJTEEQ"
  secret_key = "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"
}


resource "aws_s3_bucket" "terrateam_bucket" {
  # Don't specify the bucket name here
  acl    = "private"

  tags = {
    name = "terrateam-bucket"
    key  = "z3"
  }
}

import {
  id = "terraform-import-block-bucket"
  to = aws_s3_bucket.terrateam_bucket
}
