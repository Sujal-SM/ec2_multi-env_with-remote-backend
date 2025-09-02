resource "aws_s3_bucket" "my-bucket1" {
    bucket = "${var.bucket_name}-new"
}