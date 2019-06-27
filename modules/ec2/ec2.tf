resource "aws_instance" "naren_instance" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  tags = {
    Name = "naren_instance"
  }
}
