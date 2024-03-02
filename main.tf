module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source              = "./modules/subnets"
  vpc_id              = module.vpc.vpc_id
  public_subnets      = var.public_subnets
  private_subnets     = var.private_subnets
  internet_gateway_id = module.vpc.internet_gateway_id
}

module "ec2" {
  source          = "./modules/ec2"
  ami_id          = "ami-123456" 
  instance_type   = var.instance_type
  public_subnet_id = module.subnets.public_subnet_ids[0]
  vpc_id          = module.vpc.vpc_id
}
