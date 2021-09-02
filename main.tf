resource "aws_instance" "sample" {
  ami           = var.ami
  instance_type = var.instanceType
  vpc_security_group_ids = [var.sg]
  associate_public_ip_address = true
  root_block_device {
     volume_size = 30GB
  }
  

}
