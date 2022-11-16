resource "aws_instance" "web" {
  ami               = "ami-089a545a9ed9893b6"
  instance_type     = "t2.micro"
  key_name          = "dovekey"
  #availability_zone = "us-east-2a"
  availability_zone           = "us-east-2c"
  tags = {
    Name = "WebApp-terraform"
  }
  lifecycle {
    create_before_destroy = true  # create an EC2 before destroy
    prevent_destroy =true #avoid destoy
    ignore_changes = true # ignore chances
    
  }
}
