module "my_vpc" {
  source = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  subnet_cidr = "192.168.0.0/24"
  vpc_id = "${module.my_vpc.vpc_id}"
}

module "my_instance" {
 source = "./modules/ec2"
 subnet_id = "${module.my_vpc.subnet_id}"
 ami_id = "ami-0d2692b6acea72ee6"
}
