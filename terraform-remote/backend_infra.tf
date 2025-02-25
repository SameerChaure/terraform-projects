terraform {
         required_providers{
               aws = {
                   source = "hashicorp/aws"
                   version = "~> 5.0"
                 }
         }
}

provider "aws" {
          region = "us-east-1"
}

resource "aws_s3_bucket" "backend-bucket" {
           bucket = "remote-infra-backend-bucket1"
           force_destroy = true
}

resource "aws_dynamodb_table" "backend-table" {
           name = "remote-backend-db"
           billing_mode = "PAY_PER_REQUEST"
           hash_key = "LockID"

           attribute {
                 name = "LockID"
                 type = "S"
             }
}
