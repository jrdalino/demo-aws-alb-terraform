resource "aws_lb" "this" {
  name                         = var.aws_lb_name
  # name_prefix
  internal                     = false
  load_balancer_type           = "application"
  security_groups              = [aws_security_group.this.id]
  # drop_invalid_header_fields = false

  access_logs {
    bucket  = aws_s3_bucket.this.bucket
    enabled = true
  }

  subnets                    = [var.subnet_id_1, var.subnet_id_2]
  # subnet_mapping
  idle_timeout               = 60
  enable_deletion_protection = false
  # enable_cross_zone_load_balancing
  enable_http2               = true
  ip_address_type            = "ipv4"

  tags = {
    Namespace = var.namespace
  }
}
