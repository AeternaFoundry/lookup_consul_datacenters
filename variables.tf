variable "datacenters_lookup" {
  description = <<EOT
Map of datacenters_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

