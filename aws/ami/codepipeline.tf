resource "aws_codepipeline" "codepipeline_sample" {
  name = "codepipeline-sample"
  role_arn = "${aws_iam_role.codepipeline_sample.arn}"

  artifact_store {
    location = "aws-codebuild-sample"
    type = "S3"
  }

  stage {
    name = "Source"

    action {
      name = "Source"
      category = "Source"
      owner = "ThirdParty"
      provider = "GitHub"
      version = "1"
      output_artifacts = ["test"]

      configuration {
        Owner = "takuan-osho"
        Repo = "aws-codebuild-sample"
        Branch = "master"
      }
    }
  }

  stage {
    name = "Build"

    action {
      name = "Build"
      category = "Build"
      owner = "AWS"
      provider = "CodeBuild"
      version = "1"
      input_artifacts = ["test"]

      configuration {
        ProjectName = "codebuild_sample"
      }
    }
  }
}
