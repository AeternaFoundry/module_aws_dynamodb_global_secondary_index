variable "dynamodb_global_secondary_indices" {
  description = <<EOT
Map of dynamodb_global_secondary_indices, attributes below
Required:
    - index_name
    - table_name
Optional:
    - region
    - warm_throughput
    - key_schema (block):
        - attribute_name (required)
        - attribute_type (required)
        - key_type (required)
    - on_demand_throughput (block):
        - max_read_request_units (optional)
        - max_write_request_units (optional)
    - projection (block):
        - non_key_attributes (optional)
        - projection_type (required)
    - provisioned_throughput (block):
        - read_capacity_units (optional)
        - write_capacity_units (optional)
EOT

  type = map(object({
    index_name      = string
    table_name      = string
    region          = optional(string)
    warm_throughput = optional(list(any))
    key_schema = optional(list(object({
      attribute_name = string
      attribute_type = string
      key_type       = string
    })))
    on_demand_throughput = optional(list(object({
      max_read_request_units  = optional(number)
      max_write_request_units = optional(number)
    })))
    projection = optional(list(object({
      non_key_attributes = optional(set(string))
      projection_type    = string
    })))
    provisioned_throughput = optional(list(object({
      read_capacity_units  = optional(number)
      write_capacity_units = optional(number)
    })))
  }))
}

