terraform {
  backend "s3" {
    bucket = "jenkins-server-creation-terraform-state"
    region = "ap-south-1"
    key = "project/terraform.tfstate"
  }
}
