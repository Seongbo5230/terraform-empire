# resource "aws_db_subnet_group" "fib-workflow" {
#   name       = "fib-workflow-postgres"
#   subnet_ids = ["${aws_subnet.private[0].id}", "${aws_subnet.private[1].id}", "${aws_subnet.private[2].id}"]
# }
#
# resource "aws_db_instance" "fib-workflow" {
#   allocated_storage       = 20
#   max_allocated_storage   = 0
#   apply_immediately       = true
#   availability_zone       = "${data.aws_availability_zones.available.names[0]}"
#   backup_retention_period = 1
#   db_subnet_group_name    = "${aws_db_subnet_group.fib-workflow.name}"
#   engine                  = "postgres"
#   engine_version          = "11.4"
#   identifier              = "fib-workflow"
#   instance_class          = "db.t2.micro"
#   username                = "${var.postgres-fib-workflow-username}"
#   password                = "${var.postgres-fib-workflow-password}"
#   name                    = "${var.postgres-fib-workflow-name}"
#   port                    = 5432
#   vpc_security_group_ids  = ["${aws_security_group.fib-workflow.id}"]
#   skip_final_snapshot     = true
#   storage_type            = "gp2"
# }
