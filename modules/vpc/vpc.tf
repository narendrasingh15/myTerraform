resource "aws_vpc" "narendravpc" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "${var.vpc_tenancy}"
  tags = {
   Name = "narendravpc"
   }
}

resource "aws_subnet" "subnet1" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"
  tags = {
   Name = "subnet1"
  }
}

output "vpc_id" {
 value = "${aws_vpc.narendravpc.id}"
}

output "subnet_id" {
 value = "${aws_subnet.subnet1.id}"
}
