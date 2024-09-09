output "subnet_ids" {
  description = "Yandex.Cloud Subnets map"
  value       = { for default in data.yandex_vpc_subnet.default : default.zone =>{
    "zone" = default.zone
    "subnet_id" = default.id
    "folder_id" = default.folder_id
    "id" = default.id
    "v4_cidr_blocks" = default.v4_cidr_blocks
  }}
} 
