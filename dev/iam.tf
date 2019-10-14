resource "aws_iam_user" "fib-workflow" {
  name = "fib-workflow"
  path = "/"

  tags = {
    Name = "fib-workflow"
  }
}

resource "aws_iam_policy" "fib-workflow" {
  name   = "fib-workflow-policy"
  path   = "/"
  policy = "${data.template_file.fib-workflow.rendered}"
}

resource "aws_iam_role" "fib-workflow" {
  name = "fib-workflow"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "",
        "Effect": "Allow",
        "Principal": {
          "Service": "elasticbeanstalk.amazonaws.com"
        },
        "Action": "sts:AssumeRole",
        "Condition": {
          "StringEquals": {
            "sts:ExternalId": "elasticbeanstalk"
          }
        }
      }
    ]
}
EOF

  tags = {
    tag-key = "fib-workflow"
  }
}
