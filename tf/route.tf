resource "aws_internet_gateway" "playground-igw" {
    vpc_id = "${aws_vpc.playground.id}"

    tags {
        Name = "playground-igw"
    }
}

resource "aws_route_table_association" "public" {
    subnet_id = "${aws_subnet.public-playground-1c.id}"
    route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table" "public" {
    vpc_id = "${aws_vpc.playground.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.playground-igw.id}"
    }

    tags {
        Name = "playground-public"
    }
}

resource "aws_route_table_association" "private" {
    subnet_id = "${aws_subnet.private-playground-1c.id}"
    route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table" "private" {
    vpc_id = "${aws_vpc.playground.id}"

    tags {
        Name = "playground-private"
    }
}

resource "aws_main_route_table_association" "main" {
    vpc_id = "${aws_vpc.playground.id}"
    route_table_id = "${aws_route_table.private.id}"
}
