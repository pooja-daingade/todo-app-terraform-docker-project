terraform {
  backend "s3" {
    bucket = "terraform-bucket-backend-new"
    key    = "compute/ec2/docker/terraform.tfstate"
    region = "ap-south-1"
  }
}