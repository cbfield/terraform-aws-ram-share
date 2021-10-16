# terraform-aws-ram-share
A module to create AWS Resource Access Manager (RAM) shares for resources across a multi-account infrastructure

# Terraform Docs

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ram_principal_association.principal_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_principal_association) | resource |
| [aws_ram_resource_association.resource_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_association) | resource |
| [aws_ram_resource_share.share](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_share) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_external_principals"></a> [allow\_external\_principals](#input\_allow\_external\_principals) | Whether or not to allow principals from outside your organization to participate in this share | `bool` | `true` | no |
| <a name="input_associated_principals"></a> [associated\_principals](#input\_associated\_principals) | Principals (arns) to associate with this share, granting them access to the associated resources | `list(string)` | `[]` | no |
| <a name="input_associated_resources"></a> [associated\_resources](#input\_associated\_resources) | Resources (arns) to associate with this share, making them accessible to the associated principals | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | A name to assign to this resource share | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the resource share | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allow_external_principals"></a> [allow\_external\_principals](#output\_allow\_external\_principals) | The provided value for var.allow\_external\_principals |
| <a name="output_associated_principals"></a> [associated\_principals](#output\_associated\_principals) | Principal associations with this share |
| <a name="output_associated_resources"></a> [associated\_resources](#output\_associated\_resources) | Resource associations with this share |
| <a name="output_name"></a> [name](#output\_name) | The provided value for var.name |
| <a name="output_share"></a> [share](#output\_share) | The resource share object |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags associated with the resource share |
