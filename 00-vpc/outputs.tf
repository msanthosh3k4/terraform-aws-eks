# output "azs_info" {
#     value = module.vpc.az_info
# }
# output "routeing_info" {
#     value = module.vpc.routeing_info
# }

# output "default_vpc" {
#     value = module.vpc.default.id
# }

output "public_subnet" {
  value       = module.vpc.public_subnet_ids
}


