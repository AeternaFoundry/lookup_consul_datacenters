data "consul_datacenters" "datacenters_lookup" {
  for_each = var.datacenters_lookup

}

