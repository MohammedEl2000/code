#AWS
project_name             = "Project"
vpc_cidr                 = "10.0.0.0/16"
public_subnet1_az1_cidr  = "10.0.1.0/24"
public_subnet2_az2_cidr  = "10.0.2.0/24"
private_subnet1_az1_cidr = "10.0.3.0/24"
private_subnet2_az2_cidr = "10.0.4.0/24"
ami                      = "ami-0aa7d40eeae50c9a9"
instance_type            = "t2.micro"
ec2_web_tag_name         = "fyp_23"
keyname                  = "key"
identifier               = "db-mysql"
engine                   = "mysql"
engine_version           = "8.0.27"
db_name                  = "dbmysql"
username                 = "user"
password                 = "password"

#AZURE


application = "fyp"
environment = "project23"
location    = "westeurope"
capacity    = 2
resource_group_name = "fyp-project23"

default_tags = {
  environment = "project"
}

address_space = "10.134.0.0/16"
subnet        = "10.134.20.0/24"
