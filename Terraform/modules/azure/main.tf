locals {
  resource_group_name = "${var.application}-${var.environment}"
  vnet_name           = "${var.application}-${var.environment}-vnet"
  subnet_name         = "${var.application}-${var.environment}-subnet"
  saname              = "${var.application}${var.environment}"
}


module "vnet" {
  source              = "./modules/vnet"
  location            = var.location
  resource_group_name = local.resource_group_name
  vnet_name           = local.vnet_name
  address_space       = var.address_space

  tags = merge(var.default_tags)
}

module "subnets" {
  source              = "./modules/subnet"
  location            = var.location
  resource_group_name = local.resource_group_name
  vnet_name           = module.vnet.vnet_name

  subnets = [
    {
      name   = local.subnet_name
      prefix = var.subnet
    }
  ]

  tags = merge(var.default_tags)
}

module "vmss" {
  source              = "./modules/vmss"
  location            = var.location
  capacity            = var.capacity
  saname              = local.saname
  subnet_id           = module.subnets.vnet_subnets
  resource_group_name = local.resource_group_name
  endpoint           = module.database.sql_server_name

  tags = merge(var.default_tags)
}

module "database" {
  source              = "./modules/database"
  location            = var.location
  resource_group_name = local.resource_group_name
}