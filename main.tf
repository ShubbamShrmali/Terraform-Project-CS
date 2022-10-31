terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "AKIATBVLZ44IX7OI7752"
    secret_key = "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"
    
}



resource "aws_instance" "JenkinDeploy" {
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
