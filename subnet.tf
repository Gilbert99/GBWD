resource "aws_subnet" "private" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "${aws_vpc.warren-gilbert.id}"
}

resource "aws_subnet" "public" {
  cidr_block = "10.0.2.0/24"
  vpc_id = "${aws_vpc.warren-gilbert.id}"
  map_public_ip_on_launch = "true"
}
