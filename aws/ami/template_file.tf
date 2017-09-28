data "template_file" "codebuild-sample-role" {
  template = "${file("${path.module}/policy/codebuild-sample-role.tpl")}"
}

data "template_file" "codebuild-sample-role-policy" {
  template = "${file("${path.module}/policy/codebuild-sample-role-policy.tpl")}"
}

data "template_file" "codepipeline-sample-role" {
  template = "${file("${path.module}/policy/codepipeline-sample-role.tpl")}"
}

data "template_file" "codepipeline-sample-role-policy" {
  template = "${file("${path.module}/policy/codepipeline-sample-role-policy.tpl")}"
}
