output "datacenters_lookup_id" {
  description = "Map of id values across all datacenters_lookup, keyed the same as var.datacenters_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_datacenters.datacenters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datacenters_lookup_datacenters" {
  description = "Map of datacenters values across all datacenters_lookup, keyed the same as var.datacenters_lookup except keys with no datacenters are omitted"
  value       = { for k, v in data.consul_datacenters.datacenters_lookup : k => v.datacenters if v.datacenters != null && length(v.datacenters) > 0 }
}

