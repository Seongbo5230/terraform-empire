resource "aws_iam_user" "fib-workflow" {
  name = "fib-workflow"
  path = "/"

  tags = {
    Name = "fib-workflow"
  }
}

resource "aws_iam_policy" "fib-workflow" {
  name = "fib-workflow-policy"
  path = "/"
  # policy = "${data.template_file.fib-workflow.rendered}"
  policy = "${data.template_file.admin.rendered}"
}

resource "aws_iam_role" "fib-workflow" {
  name = "fib-workflow"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "elasticbeanstalk.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      },
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
}
EOF

  tags = {
    tag-key = "fib-workflow"
  }
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = "${aws_iam_role.fib-workflow.name}"
  policy_arn = "${aws_iam_policy.fib-workflow.arn}"
}
