resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc-cidr-block}"

  tags = {
    Name        = "${var.envt}-vpc"
    Environment = "${var.envt}"
  }
}

resource "aws_subnet" "private" {
  count             = 3
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${var.private-cidr-block[count.index]}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
}
