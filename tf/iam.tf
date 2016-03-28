# iam role opsworks service
resource "aws_iam_role" "opsworks-service" {
    name = "opsworks-service"
    assume_role_policy = "${file("opsworks_service_assume_role.json")}"
}

resource "aws_iam_role_policy" "opsworks-service" {
    name = "opsworks-service-policy"
    role = "${aws_iam_role.opsworks-service.id}"
    policy = "${file("opsworks_service_policy.json")}"
}

# iam role for sensu on opsworks
resource "aws_iam_instance_profile" "opsworks-sensu-profile" {
    name = "opsworks-sensu-profile"
    roles = ["${aws_iam_role.opsworks-sensu.name}"]
}

resource "aws_iam_role" "opsworks-sensu" {
    name = "opsworks-sensu-playground"
    assume_role_policy = "${file("opsworks_sensu_assume_role.json")}"
}

resource "aws_iam_role_policy" "opsworks-sensu" {
    name = "opsworks-sensu-playground-policy"
    role = "${aws_iam_role.opsworks-sensu.id}"
    policy = "${file("opsworks_sensu_policy.json")}"
}
