resource "aws_iam_role" "codebuild_sample" {
    name = "codebuild_sample_role"
    assume_role_policy = "${data.template_file.iam-role-principal.rendered}"
}

resource "aws_iam_role_policy" "codebuild_sample" {
    name = "codebuild_sample_policy"
    role = "${aws_iam_role.codebuild_sample.id}"
    policy = "${data.template_file.iam-role-default.rendered}"
}
