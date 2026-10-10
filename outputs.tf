output "dynamodb_global_secondary_indices_arn" {
  description = "Map of arn values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "dynamodb_global_secondary_indices_index_name" {
  description = "Map of index_name values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.index_name if v.index_name != null && length(v.index_name) > 0 }
}
output "dynamodb_global_secondary_indices_key_schema" {
  description = "Map of key_schema values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.key_schema if v.key_schema != null && length(v.key_schema) > 0 }
}
output "dynamodb_global_secondary_indices_on_demand_throughput" {
  description = "Map of on_demand_throughput values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.on_demand_throughput if v.on_demand_throughput != null && length(v.on_demand_throughput) > 0 }
}
output "dynamodb_global_secondary_indices_projection" {
  description = "Map of projection values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.projection if v.projection != null && length(v.projection) > 0 }
}
output "dynamodb_global_secondary_indices_provisioned_throughput" {
  description = "Map of provisioned_throughput values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.provisioned_throughput if v.provisioned_throughput != null && length(v.provisioned_throughput) > 0 }
}
output "dynamodb_global_secondary_indices_region" {
  description = "Map of region values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dynamodb_global_secondary_indices_table_name" {
  description = "Map of table_name values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "dynamodb_global_secondary_indices_warm_throughput" {
  description = "Map of warm_throughput values across all dynamodb_global_secondary_indices, keyed the same as var.dynamodb_global_secondary_indices"
  value       = { for k, v in aws_dynamodb_global_secondary_index.dynamodb_global_secondary_indices : k => v.warm_throughput if v.warm_throughput != null && length(v.warm_throughput) > 0 }
}

