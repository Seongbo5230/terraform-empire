# resource "aws_elasticache_subnet_group" "fib-workflow" {
#   name       = "fib-workflow-redis"
#   subnet_ids = ["${aws_subnet.private[0].id}", "${aws_subnet.private[1].id}", "${aws_subnet.private[2].id}"]
# }
#
# resource "aws_elasticache_cluster" "fib-workflow" {
#   cluster_id        = "fib-workflow"
#   engine            = "redis"
#   engine_version    = "4.0.10"
#   node_type         = "cache.t2.micro"
#   num_cache_nodes   = 1
#   port              = 6379
#   subnet_group_name = "${aws_elasticache_subnet_group.fib-workflow.name}"
#   apply_immediately = true
#   availability_zone = "${data.aws_availability_zones.available.names[0]}"
# }
