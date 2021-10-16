output "allow_external_principals" {
  description = "The provided value for var.allow_external_principals"
  value       = var.allow_external_principals
}

output "associated_principals" {
  description = "Principal associations with this share"
  value       = aws_ram_principal_association.principal_association
}

output "associated_resources" {
  description = "Resource associations with this share"
  value       = aws_ram_resource_association.resource_association
}

output "name" {
  description = "The provided value for var.name"
  value       = var.name
}

output "share" {
  description = "The resource share object"
  value       = aws_ram_resource_share.share
}

output "tags" {
  description = "Tags associated with the resource share"
  value = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}
