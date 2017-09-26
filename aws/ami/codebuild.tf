resource "aws_codebuild_project" "codebuild_sample" {
  name          = "codebuild_sample"
  description   = "codebuild sample project"
  build_timeout = "10"
  service_role  = "${aws_iam_role.codebuild_sample.arn}"

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "2"
    type         = "LINUX_CONTAINER"
  }

  source {
    type     = "GITHUB"
    location = "https://github.com/takuan-osho/aws-codebuild-sample.git"
  }
}
