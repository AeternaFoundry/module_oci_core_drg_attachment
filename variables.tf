variable "core_drg_attachments" {
  description = <<EOT
Map of core_drg_attachments, attributes below
Required:
    - drg_id
Optional:
    - defined_tags
    - display_name
    - does_preserve_original_routes_with_nat
    - drg_nat_policy_id
    - drg_route_table_id
    - export_drg_route_distribution_id
    - freeform_tags
    - remove_drg_nat_policy_trigger
    - remove_export_drg_route_distribution_trigger
    - route_table_id
    - vcn_id
    - network_details (block):
        - id (optional)
        - route_table_id (optional)
        - type (required)
        - vcn_route_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    drg_id                                       = string
    defined_tags                                 = optional(map(string))
    display_name                                 = optional(string)
    does_preserve_original_routes_with_nat       = optional(bool)
    drg_nat_policy_id                            = optional(string)
    drg_route_table_id                           = optional(string)
    export_drg_route_distribution_id             = optional(string)
    freeform_tags                                = optional(map(string))
    remove_drg_nat_policy_trigger                = optional(bool)
    remove_export_drg_route_distribution_trigger = optional(bool)
    route_table_id                               = optional(string)
    vcn_id                                       = optional(string)
    network_details = optional(object({
      id             = optional(string)
      route_table_id = optional(string)
      type           = string
      vcn_route_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_drg_attachments : (
        v.network_details == null || (contains([for v in ["IPSEC_TUNNEL", "LOOPBACK", "REMOTE_PEERING_CONNECTION", "VCN"] : lower(v)], lower(v.network_details.type)))
      )
    ])
    error_message = "must be one of: \"IPSEC_TUNNEL\", \"LOOPBACK\", \"REMOTE_PEERING_CONNECTION\", \"VCN\""
  }
}

