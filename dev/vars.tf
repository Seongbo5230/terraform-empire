variable "region" {
  default = "us-west-1"
}

variable "vpc-cidr-block" {
  default = "10.0.0.0/16"
}

variable "private-cidr-block" {
  default = ["10.0.128.0/24", "10.0.129.0/24", "10.0.130.0/24"]
}

variable "public-cidr-block" {
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "envt" {
  default = "dev"
}
