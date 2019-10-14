output "vpc-id" {
  value = "${aws_vpc.vpc.id}"
}

output "vpc-cidr-block" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "private-subnet-cidr-blocks" {
  value = "${aws_subnet.private.*.cidr_block}"
}
