resource "aws_instance" "company_ec2_WASC" {
  ami                         = "ami-01711d925a1e4cc3a"
  instance_type               = "t2.small"
  key_name                    = "heeyun"
  vpc_security_group_ids      = [aws_security_group.company_sec.id]
  availability_zone           = "ap-northeast-2c"
  subnet_id                   = aws_subnet.company_wasc.id
  user_data                   = file("install_WAS_C.sh")
    tags = {
      "Name" = "WASC"
    }
}
