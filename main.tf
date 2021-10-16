resource "aws_ram_resource_share" "share" {
  name                      = var.name
  allow_external_principals = var.allow_external_principals

  tags = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}

resource "aws_ram_resource_association" "resource_association" {
  for_each = toset(var.associated_resources)

  resource_share_arn = aws_ram_resource_share.share.arn
  resource_arn       = each.key
}

resource "aws_ram_principal_association" "principal_association" {
  for_each = toset(var.associated_principals)

  resource_share_arn = aws_ram_resource_share.share.arn
  principal          = each.key
}
