resource "aws_instance" "sample" {
  ami           = var.ami
  instance_type = var.instanceType
  vpc_security_group_ids = [var.sg]
  subnet_id = var.subnet
  associate_public_ip_address = true
  key_name=var.keyname
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

output "ec2_tags" {
   value = aws_instance.sample.tags_all    
}
output "ec2_ip" {
   value = aws_instance.sample.private_ip
}

output "region" {
value = var.region
}
