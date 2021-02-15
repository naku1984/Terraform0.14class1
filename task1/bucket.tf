resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-456456456"
  acl    = "private"

tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}




    

