resource "aws_codebuild_project" "codebuild_sample" {
  name          = "codebuild_sample"
  description   = "codebuild sample project"
  service_role  = "${aws_iam_role.codebuild_sample.arn}"

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/ubuntu-base:14.04"
    type         = "LINUX_CONTAINER"
  }

  source {
    type     = "CODEPIPELINE"
    location = "codepipeline-sample"
  }
}
