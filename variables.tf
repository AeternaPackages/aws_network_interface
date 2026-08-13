variable "network_interfaces" {
  description = <<EOT
Map of network_interfaces, attributes below
Required:
    - subnet_id
Optional:
    - description
    - enable_primary_ipv6
    - interface_type
    - ipv4_prefix_count
    - ipv4_prefixes
    - ipv6_address_count
    - ipv6_address_list
    - ipv6_address_list_enabled
    - ipv6_addresses
    - ipv6_prefix_count
    - ipv6_prefixes
    - private_ip
    - private_ip_list
    - private_ip_list_enabled
    - private_ips
    - private_ips_count
    - region
    - security_groups
    - source_dest_check
    - tags
    - tags_all
    - attachment (block)
    - ena_srd_specification (block)
Nested network_interface_attachments (aws_network_interface_attachment):
    Required:
        - device_index
        - instance_id
    Optional:
        - network_card_index
        - region
Nested network_interface_permissions (aws_network_interface_permission):
    Required:
        - aws_account_id
        - permission
    Optional:
        - region
Nested network_interface_sg_attachments (aws_network_interface_sg_attachment):
    Required:
        - security_group_id
    Optional:
        - region
EOT

  type = map(object({
    subnet_id                 = string
    source_dest_check         = optional(bool)
    security_groups           = optional(set(string))
    region                    = optional(string)
    private_ips_count         = optional(number)
    private_ips               = optional(set(string))
    private_ip_list_enabled   = optional(bool)
    private_ip_list           = optional(list(string))
    private_ip                = optional(string)
    ipv6_prefixes             = optional(set(string))
    ipv6_prefix_count         = optional(number)
    ipv6_addresses            = optional(set(string))
    ipv6_address_list_enabled = optional(bool)
    ipv6_address_list         = optional(list(string))
    ipv6_address_count        = optional(number)
    ipv4_prefixes             = optional(set(string))
    ipv4_prefix_count         = optional(number)
    interface_type            = optional(string)
    enable_primary_ipv6       = optional(bool)
    description               = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    attachment = optional(list(object({
      device_index       = number
      instance           = string
      network_card_index = optional(number)
    })))
    ena_srd_specification = optional(object({
      ena_srd_enabled = optional(bool)
      ena_srd_udp_specification = optional(object({
        ena_srd_udp_enabled = optional(bool)
      }))
    }))
    network_interface_attachments = optional(map(object({
      device_index       = number
      instance_id        = string
      network_card_index = optional(number)
      region             = optional(string)
    })))
    network_interface_permissions = optional(map(object({
      aws_account_id = string
      permission     = string
      region         = optional(string)
    })))
    network_interface_sg_attachments = optional(map(object({
      security_group_id = string
      region            = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.network_interfaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_attachments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_permissions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_sg_attachments, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
