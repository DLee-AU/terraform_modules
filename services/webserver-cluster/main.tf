provider "aws" {
    region = "ap-southeast-2"
}

data "aws_ami" "instance" {
most_recent = true
owners = ['amazone','aws-marketplace']

filter {
    name= "product-code"
    values = [""]
}

filter {
    name= "root-device-type"
    values = ["ebs"]
}

filter {
    name= "virtualization-type"
    values = ["hvm"]
}

data "aws_availability_zones" "all" {}


