resource "aws_s3_bucket" "exampleindus" {
  bucket = "my-tf-test-bucket-indus"

  tags = {
    Name        = "My bucket"
  }
}