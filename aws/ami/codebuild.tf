resource "aws_codebuild_project" "codebuild_sample" {
  name          = "codebuild_sample"
  description   = "codebuild sample project"
  build_timeout = "10"
  service_role  = "${aws_iam_role.codebuild_sample.arn}"

  artifacts {
    type = "S3"
    location = "aws-codebuild-sample"
    namespace_type = "BUILD_ID"
    packaging = "ZIP"
    path = "aws-codebuild-sample"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/ubuntu-base:14.04"
    type         = "LINUX_CONTAINER"
  }

  source {
    type     = "GITHUB"
    location = "https://github.com/takuan-osho/aws-codebuild-sample.git"
  }
}
