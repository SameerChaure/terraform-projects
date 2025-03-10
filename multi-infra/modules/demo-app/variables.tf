
variable "ami_id" {
             description = "This is AMI ID based on modules"
             type = string
}

variable "instance_type"{
         type = string
}

variable "instance_name" {
          type = string     
}

variable "bucket_name" {
          type = string
} 

variable "table_name" {
          type = string
}

variable "env_name" {
         type = string
}
