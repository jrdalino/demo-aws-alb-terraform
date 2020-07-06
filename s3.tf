# S3 Bucket
resource "aws_s3_bucket" "this" {
  bucket        = "${var.aws_account}-${var.aws_lb_name}"
  acl           = "private"
  force_destroy = "true"
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::114774131450:root"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::${var.aws_account}-${var.aws_lb_name}/*"
    },
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::${var.aws_account}-${var.aws_lb_name}/*",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      }
    },
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Action": "s3:GetBucketAcl",
      "Resource": "arn:aws:s3:::${var.aws_account}-${var.aws_lb_name}"
    }
  ]
}
POLICY
}
