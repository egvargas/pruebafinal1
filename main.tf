resource "aws_instance" "webserver" {
  #### Cambiar Ami por la instancia ####
  ami                         = "ami-05fb0b8c1424f266b"
  instance_type               = "t2.small"
  key_name                    = "mykey" 
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  user_data                   = "${file("ec2_user_data.sh")}"
  tags = {
    Name = "webserver"
  }
}
