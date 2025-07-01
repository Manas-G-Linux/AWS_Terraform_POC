output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

output "iam_user_name" {
  value = module.iam.user_name
}

output "account_ids" {
  value = data.aws_caller_identity.current.account_id
}
