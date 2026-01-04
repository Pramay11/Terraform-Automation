terraform {
  backend "s3" {
    bucket = "project-sample-04012026"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
