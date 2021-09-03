variable "ami" {
   type = string
   default = "ami-0c1a7f89451184c8b"
}
variable "sg" {
   type = string
}

variable "instanceType" {
   type = string
   default = "t3a.medium"
}

variable "region" {
    type=string
default="ap-south-1"
}

