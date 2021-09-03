resource "aws_instance" "sample" {
  ami           = var.ami
  instance_type = var.instanceType
  vpc_security_group_ids = [var.sg]
  associate_public_ip_address = true
  key_name="JARVIS"
  root_block_device {
     volume_size = 30
  }
  tags = {
    Sample = "Harness"
    Contact = "KD"
    Name = "NewHarnessDeploymentEC2"
  }
  

}

provider "aws" {
   region=var.region
}
