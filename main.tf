locals {
  network_interfaces = { for k1, v1 in var.network_interfaces : k1 => { attachment = v1.attachment, description = v1.description, ena_srd_specification = v1.ena_srd_specification, enable_primary_ipv6 = v1.enable_primary_ipv6, interface_type = v1.interface_type, ipv4_prefix_count = v1.ipv4_prefix_count, ipv4_prefixes = v1.ipv4_prefixes, ipv6_address_count = v1.ipv6_address_count, ipv6_address_list = v1.ipv6_address_list, ipv6_address_list_enabled = v1.ipv6_address_list_enabled, ipv6_addresses = v1.ipv6_addresses, ipv6_prefix_count = v1.ipv6_prefix_count, ipv6_prefixes = v1.ipv6_prefixes, private_ip = v1.private_ip, private_ip_list = v1.private_ip_list, private_ip_list_enabled = v1.private_ip_list_enabled, private_ips = v1.private_ips, private_ips_count = v1.private_ips_count, region = v1.region, security_groups = v1.security_groups, source_dest_check = v1.source_dest_check, subnet_id = v1.subnet_id, tags = v1.tags, tags_all = v1.tags_all } }

  network_interface_attachments = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_attachments, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)

  network_interface_permissions = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_permissions, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)

  network_interface_sg_attachments = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_sg_attachments, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)
}

module "network_interfaces" {
  source             = "git::https://github.com/AeternaModules/aws_network_interface.git?ref=v6.58.0"
  network_interfaces = local.network_interfaces
}

module "network_interface_attachments" {
  source                        = "git::https://github.com/AeternaModules/aws_network_interface_attachment.git?ref=v6.58.0"
  network_interface_attachments = local.network_interface_attachments
  depends_on                    = [module.network_interfaces]
}

module "network_interface_permissions" {
  source                        = "git::https://github.com/AeternaModules/aws_network_interface_permission.git?ref=v6.58.0"
  network_interface_permissions = local.network_interface_permissions
  depends_on                    = [module.network_interfaces]
}

module "network_interface_sg_attachments" {
  source                           = "git::https://github.com/AeternaModules/aws_network_interface_sg_attachment.git?ref=v6.58.0"
  network_interface_sg_attachments = local.network_interface_sg_attachments
  depends_on                       = [module.network_interfaces]
}

