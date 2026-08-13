# --- aws_network_interface ---
output "network_interfaces_id" {
  description = "Map of id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_id
}

output "network_interfaces_arn" {
  description = "Map of arn values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_arn
}

output "network_interfaces_attachment" {
  description = "Map of attachment values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_attachment
}

output "network_interfaces_description" {
  description = "Map of description values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_description
}

output "network_interfaces_ena_srd_specification" {
  description = "Map of ena_srd_specification values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ena_srd_specification
}

output "network_interfaces_enable_primary_ipv6" {
  description = "Map of enable_primary_ipv6 values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_enable_primary_ipv6
}

output "network_interfaces_interface_type" {
  description = "Map of interface_type values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_interface_type
}

output "network_interfaces_ipv4_prefix_count" {
  description = "Map of ipv4_prefix_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv4_prefix_count
}

output "network_interfaces_ipv4_prefixes" {
  description = "Map of ipv4_prefixes values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv4_prefixes
}

output "network_interfaces_ipv6_address_count" {
  description = "Map of ipv6_address_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_address_count
}

output "network_interfaces_ipv6_address_list" {
  description = "Map of ipv6_address_list values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_address_list
}

output "network_interfaces_ipv6_address_list_enabled" {
  description = "Map of ipv6_address_list_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_address_list_enabled
}

output "network_interfaces_ipv6_addresses" {
  description = "Map of ipv6_addresses values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_addresses
}

output "network_interfaces_ipv6_prefix_count" {
  description = "Map of ipv6_prefix_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_prefix_count
}

output "network_interfaces_ipv6_prefixes" {
  description = "Map of ipv6_prefixes values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ipv6_prefixes
}

output "network_interfaces_mac_address" {
  description = "Map of mac_address values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_mac_address
}

output "network_interfaces_outpost_arn" {
  description = "Map of outpost_arn values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_outpost_arn
}

output "network_interfaces_owner_id" {
  description = "Map of owner_id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_owner_id
}

output "network_interfaces_private_dns_name" {
  description = "Map of private_dns_name values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_dns_name
}

output "network_interfaces_private_ip" {
  description = "Map of private_ip values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ip
}

output "network_interfaces_private_ip_list" {
  description = "Map of private_ip_list values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ip_list
}

output "network_interfaces_private_ip_list_enabled" {
  description = "Map of private_ip_list_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ip_list_enabled
}

output "network_interfaces_private_ips" {
  description = "Map of private_ips values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ips
}

output "network_interfaces_private_ips_count" {
  description = "Map of private_ips_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ips_count
}

output "network_interfaces_region" {
  description = "Map of region values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_region
}

output "network_interfaces_security_groups" {
  description = "Map of security_groups values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_security_groups
}

output "network_interfaces_source_dest_check" {
  description = "Map of source_dest_check values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_source_dest_check
}

output "network_interfaces_subnet_id" {
  description = "Map of subnet_id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_subnet_id
}

output "network_interfaces_tags" {
  description = "Map of tags values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_tags
}

output "network_interfaces_tags_all" {
  description = "Map of tags_all values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_tags_all
}

# --- aws_network_interface_attachment ---
output "network_interface_attachments_id" {
  description = "Map of id values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_id
}

output "network_interface_attachments_attachment_id" {
  description = "Map of attachment_id values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_attachment_id
}

output "network_interface_attachments_device_index" {
  description = "Map of device_index values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_device_index
}

output "network_interface_attachments_instance_id" {
  description = "Map of instance_id values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_instance_id
}

output "network_interface_attachments_network_card_index" {
  description = "Map of network_card_index values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_network_card_index
}

output "network_interface_attachments_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_network_interface_id
}

output "network_interface_attachments_region" {
  description = "Map of region values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_region
}

output "network_interface_attachments_status" {
  description = "Map of status values across all network_interface_attachments, keyed the same as var.network_interface_attachments"
  value       = module.network_interface_attachments.network_interface_attachments_status
}

# --- aws_network_interface_permission ---
output "network_interface_permissions_id" {
  description = "Map of id values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_id
}

output "network_interface_permissions_aws_account_id" {
  description = "Map of aws_account_id values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_aws_account_id
}

output "network_interface_permissions_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_network_interface_id
}

output "network_interface_permissions_network_interface_permission_id" {
  description = "Map of network_interface_permission_id values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_network_interface_permission_id
}

output "network_interface_permissions_permission" {
  description = "Map of permission values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_permission
}

output "network_interface_permissions_region" {
  description = "Map of region values across all network_interface_permissions, keyed the same as var.network_interface_permissions"
  value       = module.network_interface_permissions.network_interface_permissions_region
}

# --- aws_network_interface_sg_attachment ---
output "network_interface_sg_attachments_id" {
  description = "Map of id values across all network_interface_sg_attachments, keyed the same as var.network_interface_sg_attachments"
  value       = module.network_interface_sg_attachments.network_interface_sg_attachments_id
}

output "network_interface_sg_attachments_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_sg_attachments, keyed the same as var.network_interface_sg_attachments"
  value       = module.network_interface_sg_attachments.network_interface_sg_attachments_network_interface_id
}

output "network_interface_sg_attachments_region" {
  description = "Map of region values across all network_interface_sg_attachments, keyed the same as var.network_interface_sg_attachments"
  value       = module.network_interface_sg_attachments.network_interface_sg_attachments_region
}

output "network_interface_sg_attachments_security_group_id" {
  description = "Map of security_group_id values across all network_interface_sg_attachments, keyed the same as var.network_interface_sg_attachments"
  value       = module.network_interface_sg_attachments.network_interface_sg_attachments_security_group_id
}


