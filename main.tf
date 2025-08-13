provider "aws" {
  region     = "us-east-1"       #write your region
  access_key = "xxxxxxxxxxxxxxx" #copy your access-key
  secret_key = "xxxxxxxxxxxxxxx" #copy your secret key
}



resource "aws_instance" "testinstance" {
  ami           = "xxxxxxxxxxxxxx" #copy your ami 
  instance_type = "t3.micro"
  tags = {
    Name = "xxx" #the name you want 
  }
}
