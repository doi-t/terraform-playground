resource "aws_opsworks_stack" "sensu" {
    name = "sensu-playground"
    region = "${var.aws_region}"
    service_role_arn = "${aws_iam_role.opsworks-service.arn}"
    default_instance_profile_arn = "${aws_iam_instance_profile.opsworks-sensu-profile.arn}"
    color = "rgb(57, 131, 94)" # green
    configuration_manager_name = "Chef"
    configuration_manager_version = "12"
    default_os = "Amazon Linux 2015.09"
    default_root_device_type = "instance-store"
    vpc_id = "${aws_vpc.playground.id}"
    default_subnet_id = "${aws_subnet.public-playground-1c.id}"
    hostname_theme = "Layer_Dependent"
    use_opsworks_security_groups = false
    manage_berkshelf = false
    berkshelf_version = ""
}
