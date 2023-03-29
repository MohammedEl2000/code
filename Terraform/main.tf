module "aws" {

  source = "./modules/aws"
  project_name             = var.project_name
  vpc_cidr                 = var.vpc_cidr
  public_subnet1_az1_cidr  = var.public_subnet1_az1_cidr
  public_subnet2_az2_cidr  = var.public_subnet2_az2_cidr
  private_subnet1_az1_cidr = var.private_subnet1_az1_cidr
  private_subnet2_az2_cidr = var.private_subnet2_az2_cidr
  ami                = var.ami
  instance_type      = var.instance_type
  ec2_web_tag_name   = var.ec2_web_tag_name
  keyname            = var.keyname
  identifier              = var.identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  db_name                 = var.db_name
  username                = var.username
  password                = var.password

}

module "azure" {

  source = "./modules/azure"
  location            = var.location
  address_space       = var.address_space
  subnet             = var.subnet
  resource_group_name = var.resource_group_name
  capacity           =var.capacity
  application = var.application
  environment = var.environment

  
  subscription_id = "e804f196-48a4-4ae5-b1ed-3dabc584f441"
  client_id       = "942b7fc8-dafc-4b69-aeee-4d53710f817f"
  client_secret   = "w-Y8Q~BZ6TIf8KRHprDIdOaIo02OZcj4xlkeNb50"
  tenant_id       = "766317cb-e948-4e5f-8cec-dabc8e2fd5da"
}
