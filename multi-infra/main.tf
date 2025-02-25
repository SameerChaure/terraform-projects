# Dev infra

module "dev-demo-app"{
         source = "./modules/demo-app"
         env_name = "dev"
         instance_type = "t2.micro"
         ami_id = "ami-04b4f1a9cf54c11d0"
         instance_name = "demo-instance"
         bucket_name = "demo-bucket"
         table_name = "demo-table"
}



# QA infra

module "qa-demo-app"{
         source = "./modules/demo-app"
         env_name = "qa"
         instance_type = "t2.micro"
         ami_id = "ami-053a45fff0a704a47"
         instance_name = "demo-instance"
         bucket_name = "demo-bucket"
         table_name = "demo-table"
}



# Prd infra

module "prd-demo-app"{
         source = "./modules/demo-app"
         env_name = "prd"
         instance_type = "t2.micro"
         ami_id = "ami-0c7af5fe939f2677f"
         instance_name = "demo-instance"
         bucket_name = "demo-bucket"
         table_name = "demo-table"
}
