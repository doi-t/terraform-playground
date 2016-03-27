resource "aws_vpc" "playground" {
    cidr_block = "10.10.0.0/16"

    tags {
        Name = "playground"
    }
}
