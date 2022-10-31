provider "aws" {
  region  = "us-east-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}




resource "aws_instance" "JenkinDeploy" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "Jenkins"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "JenkinsServer"
    } 
    user_data = file("jenkinsapp.sh")

}
