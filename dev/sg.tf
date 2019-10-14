resource "aws_security_group" "fib-workflow" {
  name   = "fib-workflow"
  vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_security_group_rule" "i-http" {
  security_group_id = "${aws_security_group.fib-workflow.id}"
  type              = "ingress"
  # cidr_blocks = "0.0.0.0/0"
  from_port = 5432
  to_port   = 6379
  protocol  = "tcp"
  self      = true

}

resource "aws_security_group_rule" "e-all" {
  security_group_id = "${aws_security_group.fib-workflow.id}"
  type              = "egress"
  # cidr_blocks       = ["0.0.0.0/0"]
  from_port = 0
  to_port   = 65535
  protocol  = "tcp"
  self      = true
}
