terraform {
  backend "s3" {
    bucket = "terraform-tfstate-bucket-04012026"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
