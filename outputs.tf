# ALB
output "aws_lb_id" {
  value = aws_lb.this.id
}

output "aws_lb_arn" {
  value = aws_lb.this.arn
}

output "aws_lb_arn_suffix" {
  value = aws_lb.this.arn_suffix
}

output "aws_lb_dns_name" {
  value = aws_lb.this.dns_name
}

output "aws_lb_zone_id" {
  value = aws_lb.this.zone_id
}

# ALB Listener
output "aws_lb_listener_id" {
  value = aws_lb_listener.this.id
}

output "aws_lb_listener_arn" {
  value = aws_lb_listener.this.arn
}
