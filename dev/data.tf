data "aws_availability_zones" "available" {
  state = "available"
}

data "template_file" "fib-workflow" {
  template = "${file("${path.module}/policies/fib-workflow.json")}"

  # vars {
  #   var-name = "${...}"
  # }
}

data "template_file" "admin" {
  template = "${file("${path.module}/policies/admin.json")}"
}
