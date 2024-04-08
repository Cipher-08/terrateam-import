provider "aws" {
  region = "us-east-1"
  access_key = "<your access key>"
  secret_key = "<your secret access key>"
}


resource "aws_s3_bucket" "terrateam_bucket" {
  # Don't specify the bucket name here
 

  tags = {
    name = "terrateam-bucket"
    key  = "z3"
  }
}

import {
  id = "terraform-import-block-bucket"
  to = aws_s3_bucket.terrateam_bucket
}
