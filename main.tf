terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "default"
    
}



resource "aws_instance" "tomcat" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "Jenkins"
    instance_type = "t2.micro"
    security_groups = ["sg-0edcb99a3be5a167c"]
    tags = {
        Name = "JenkinsServer"
    } 
    user_data = file("jenkinsfile")

}
