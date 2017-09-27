data "template_file" "iam-role-principal" {
  template = "${file("${path.module}/policy/iam-role-principal.tpl")}"
}

data "template_file" "iam-role-default" {
  template = "${file("${path.module}/policy/iam-role-default.tpl")}"
}

data "template_file" "codepipeline-sample-role" {
  template = "${file("${path.module}/policy/codepipeline-sample-role.tpl")}"
}

data "template_file" "codepipeline-sample-role-policy" {
  template = "${file("${path.module}/policy/codepipeline-sample-role-policy.tpl")}"
}
