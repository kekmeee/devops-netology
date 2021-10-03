output "account_id" {
  value = "data.aws_caller_identity.current.account_id"
}

output "user_id" {
  value = "data.aws_caller_identity.current.user_id"
}

output "aws_region" {
  value = "data.aws_region.name"
}

output "ec2_private_ip" {
  value = aws_instance.ec2_netology.private_ip
}

output "ec2_subnet_id" {
  value = aws_instance.ec2_netology.subnet_id
}