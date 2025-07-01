module "vpc" {
  source              = "./modules/vpc"
  cidr                = var.vpc_cidr
  public_subnet_cidr_a   = var.public_subnet_cidr_a
  public_subnet_cidr_b   = var.public_subnet_cidr_b
  az_a                   = var.az_a
  az_b                   = var.az_b
}

module "ec2" {
  source         = "./modules/ec2"
  vpc_id         = module.vpc.vpc_id
  subnet_id      = module.vpc.subnet_ids[0]
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
}

module "alb" {
  source            = "./modules/alb"
  security_group_id = module.ec2.security_group_id
  subnet_ids        = module.vpc.subnet_ids
  vpc_id            = module.vpc.vpc_id
}

module "asg" {
  source             = "./modules/asg"
  subnet_id          = module.vpc.subnet_ids[0]
  launch_template_id = module.ec2.launch_template_id
  target_group_arn   = module.alb.target_group_arn
}

module "iam" {
  source      = "./modules/iam"
  account_id  = data.aws_caller_identity.current.account_id
}

