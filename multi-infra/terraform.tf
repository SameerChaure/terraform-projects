terraform {
      required_providers {
           aws = {
               source  = "hashicorp/aws"
               version = "~> 5.0"
           }
     }


   backend "s3" {
           bucket = "remote-infra-backend-bucket1"
           dynamodb_table = "remote-backend-db"
           region = "us-east-1"
           key = "terraform.tfstate"
   }

}
