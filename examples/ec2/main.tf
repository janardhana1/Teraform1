resource "aws_instance" "sample" {
  ami                    = "ami-0dc863062bc04e1de"
  instance_type          = "t3.micro"
  vpc_security_group_ids = []

  tags = {
    Name = "sample"
  }
}
