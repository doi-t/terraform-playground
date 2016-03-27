resource "aws_subnet" "private-playground-1c" {
    vpc_id = "${aws_vpc.playground.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "10.10.1.0/24"

    tags {
        Name = "playground-private-subnet-1c"
    }
}

resource "aws_subnet" "public-playground-1c" {
    vpc_id = "${aws_vpc.playground.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "10.10.2.0/24"

    tags {
        Name = "playground-public-subnet-1c"
    }
}
