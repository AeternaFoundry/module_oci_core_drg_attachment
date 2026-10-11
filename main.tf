resource "oci_core_drg_attachment" "core_drg_attachments" {
  for_each = var.core_drg_attachments

  drg_id                                       = each.value.drg_id
  defined_tags                                 = each.value.defined_tags
  display_name                                 = each.value.display_name
  does_preserve_original_routes_with_nat       = each.value.does_preserve_original_routes_with_nat
  drg_nat_policy_id                            = each.value.drg_nat_policy_id
  drg_route_table_id                           = each.value.drg_route_table_id
  export_drg_route_distribution_id             = each.value.export_drg_route_distribution_id
  freeform_tags                                = each.value.freeform_tags
  remove_drg_nat_policy_trigger                = each.value.remove_drg_nat_policy_trigger
  remove_export_drg_route_distribution_trigger = each.value.remove_export_drg_route_distribution_trigger
  route_table_id                               = each.value.route_table_id
  vcn_id                                       = each.value.vcn_id

  dynamic "network_details" {
    for_each = each.value.network_details != null ? [each.value.network_details] : []
    content {
      id             = network_details.value.id
      route_table_id = network_details.value.route_table_id
      type           = network_details.value.type
      vcn_route_type = network_details.value.vcn_route_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

