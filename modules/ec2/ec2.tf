resource "aws_instance" "this" {
  ami                     = "ami-06468be052a4195a6"
  instance_type           = var.instance_type
}


resource "aws_instance" "import" {
  ami                     = "ami-06468be052a4195a6"
  instance_type           = var.instance_type
  tags = {
    Name = "terraform-import"
  }
  user_data_replace_on_change          = false
}