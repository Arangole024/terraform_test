
resource "aws_instance" "example24" {
  ami           = "ami-0fe0b2cf0e1f25c8a"
  instance_type = lookup(var.instance_type,terraform.workspace)
  iam_instance_profile=aws_iam_instance_profile.test_profile.name
  tags = {
    Name = "HelloWorld"
  }
}
variable "instance_type" {
    type=map(string)

    default = {
        default="t2.micro"
        dev ="t2.nano"
    }

}