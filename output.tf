output "instance_subnet_id" {
  value = module.network.subnet_ids[module.instance.zone]
}


output "instance_ip_address" {
    value = module.instance.ip_address
}

output "instance_external_ip" {
  value = module.instance.external_ip
}


