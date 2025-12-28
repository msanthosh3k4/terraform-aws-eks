module "vpc" {
    source = "github.com/msanthosh3k4/terraform-aws-vpc?ref=main"
    # source = "../terraform-aws-vpc/"
    cidr_block = var.cidr_block
    # common_tags = var.common_tags
    # project_name = var.project_name
    # environment = var.environment
    resource_name = local.resource_name
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    ispeering_required = var.ispeering_required
}
#Creating subnet group, required for Db creation
resource "aws_db_subnet_group" "expense" {
    name = local.resource_name
    description = "Subnet group for RDS instances"
    subnet_ids = module.vpc.database_subnet_ids

    tags = {
    Name = local.resource_name
    }
}