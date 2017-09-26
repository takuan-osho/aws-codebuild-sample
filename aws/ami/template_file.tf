data "template_file" "iam-role-principal" {
  template = "${file("${path.module}/policy/iam-role-principal.tpl")}"
}

data "template_file" "iam-role-default" {
  template = "${file("${path.module}/policy/iam-role-default.tpl")}"
}
