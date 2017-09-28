resource "aws_iam_role" "codebuild_sample" {
    name = "codebuild_sample_role"
    assume_role_policy = "${data.template_file.codebuild-sample-role.rendered}"
}

resource "aws_iam_role_policy" "codebuild_sample" {
    name = "codebuild_sample_policy"
    role = "${aws_iam_role.codebuild_sample.id}"
    policy = "${data.template_file.codebuild-sample-role-policy.rendered}"
}

resource "aws_iam_role" "codepipeline_sample" {
    name = "codepipeline_sample_role"
    assume_role_policy = "${data.template_file.codepipeline-sample-role.rendered}"
}

resource "aws_iam_role_policy" "codepipeline-sample" {
    name = "codepipeline_sample_policy"
    role = "${aws_iam_role.codepipeline_sample.id}"
    policy = "${data.template_file.codepipeline-sample-role-policy.rendered}"
}
