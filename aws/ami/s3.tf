resource "aws_s3_bucket" "codebuild_sample" {
  bucket = "aws-codebuild-sample"
  acl    = "private"
}
