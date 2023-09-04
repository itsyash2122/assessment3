data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  owners = ["amazon"]

}

resource "aws_instance" "jenkins" {
  
  
  security_groups = [aws_security_group.jenkins-sg.name]
  ami                         = "ami-0261755bbcb8c4a84"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "jenkins"
  associate_public_ip_address = true

  
  tags = {
    "Name" = "Jenkins"
    "Task" = "Assessment3"
  }
}