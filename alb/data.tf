#2. edit vpc name, tag
#3. edit subnet name and values

data "aws_vpc" "lab_vpc" {
    filter {
        name   = "tag:Name"
        values = ["lab-vpc"]
    }
}

data "aws_subnet" "public" {
    filter {
        name   = "tag:Name"
        values = ["public"]
    }
}