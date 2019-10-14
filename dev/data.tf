data "aws_availability_zones" "available" {
  state = "available"
}

data "template_file" "fib-workflow" {
  template = "${file("${path.module}/policies/fib-workflow.json")}"

  # vars {
  #   var-name = "${...}"
  # }
}
