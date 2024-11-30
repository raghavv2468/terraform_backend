provider "aws" {
  region     = "ap-south-1"
  
}

resource "aws_instance" "Demo" {
  ami                    = "ami-022ce6f32988af5fa"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-05f5fc31ced5b1d9f"]                                                        

  key_name               = "manishi"
  tags = {
      Name = "Redhat Server by Terraform"
    }

}

