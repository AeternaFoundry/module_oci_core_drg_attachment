output "core_drg_attachments_id" {
  description = "Map of id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_attachments_compartment_id" {
  description = "Map of compartment_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_drg_attachments_defined_tags" {
  description = "Map of defined_tags values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_drg_attachments_display_name" {
  description = "Map of display_name values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no display_name are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_drg_attachments_does_preserve_original_routes_with_nat" {
  description = "Map of does_preserve_original_routes_with_nat values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no does_preserve_original_routes_with_nat are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.does_preserve_original_routes_with_nat if v.does_preserve_original_routes_with_nat != null }
}
output "core_drg_attachments_drg_id" {
  description = "Map of drg_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no drg_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.drg_id if v.drg_id != null && length(v.drg_id) > 0 }
}
output "core_drg_attachments_drg_nat_policy_id" {
  description = "Map of drg_nat_policy_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no drg_nat_policy_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.drg_nat_policy_id if v.drg_nat_policy_id != null && length(v.drg_nat_policy_id) > 0 }
}
output "core_drg_attachments_drg_route_table_id" {
  description = "Map of drg_route_table_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no drg_route_table_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.drg_route_table_id if v.drg_route_table_id != null && length(v.drg_route_table_id) > 0 }
}
output "core_drg_attachments_export_drg_route_distribution_id" {
  description = "Map of export_drg_route_distribution_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no export_drg_route_distribution_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.export_drg_route_distribution_id if v.export_drg_route_distribution_id != null && length(v.export_drg_route_distribution_id) > 0 }
}
output "core_drg_attachments_freeform_tags" {
  description = "Map of freeform_tags values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_drg_attachments_is_cross_tenancy" {
  description = "Map of is_cross_tenancy values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no is_cross_tenancy are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.is_cross_tenancy if v.is_cross_tenancy != null }
}
output "core_drg_attachments_network_details" {
  description = "Map of network_details values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no network_details are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => one(v.network_details) if v.network_details != null && length(v.network_details) > 0 }
}
output "core_drg_attachments_remove_drg_nat_policy_trigger" {
  description = "Map of remove_drg_nat_policy_trigger values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no remove_drg_nat_policy_trigger are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.remove_drg_nat_policy_trigger if v.remove_drg_nat_policy_trigger != null }
}
output "core_drg_attachments_remove_export_drg_route_distribution_trigger" {
  description = "Map of remove_export_drg_route_distribution_trigger values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no remove_export_drg_route_distribution_trigger are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.remove_export_drg_route_distribution_trigger if v.remove_export_drg_route_distribution_trigger != null }
}
output "core_drg_attachments_route_table_id" {
  description = "Map of route_table_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no route_table_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.route_table_id if v.route_table_id != null && length(v.route_table_id) > 0 }
}
output "core_drg_attachments_state" {
  description = "Map of state values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no state are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_drg_attachments_time_created" {
  description = "Map of time_created values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no time_created are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_drg_attachments_vcn_id" {
  description = "Map of vcn_id values across all core_drg_attachments, keyed the same as var.core_drg_attachments except keys with no vcn_id are omitted"
  value       = { for k, v in oci_core_drg_attachment.core_drg_attachments : k => v.vcn_id if v.vcn_id != null && length(v.vcn_id) > 0 }
}

