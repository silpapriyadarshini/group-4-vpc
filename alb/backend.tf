#check for keys

# terraform {
#     backend "s3" {
#         bucket = "talent-academy-shoaib-lab-tfstates"
#         key = "talent-academy/ec2/terraform.tfstates"
#         region = "eu-west-1"
#         dynamodb_table = "terraform-lock"
#     }
# }

#Delete
terraform {
    backend "s3" {
        bucket = "talent-academy-silpa-lab-tfstates"
        key = "talent-academy/alb/terraform.tfstates"
        region = "eu-west-1"
        dynamodb_table = "terraform-lock"
    }
}