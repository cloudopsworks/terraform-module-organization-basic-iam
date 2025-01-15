## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_account_policy"></a> [account\_policy](#module\_account\_policy) | ./modules/account-policy | n/a |
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |
| <a name="module_tf_role"></a> [tf\_role](#module\_tf\_role) | ./modules/terraform-role | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_is_org"></a> [is\_org](#input\_is\_org) | n/a | `bool` | `false` | no |
| <a name="input_org"></a> [org](#input\_org) | n/a | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | n/a | `string` | `""` | no |
| <a name="input_parent_account_id"></a> [parent\_account\_id](#input\_parent\_account\_id) | n/a | `string` | `""` | no |
| <a name="input_secrets_manager"></a> [secrets\_manager](#input\_secrets\_manager) | n/a | `bool` | `false` | no |
| <a name="input_trust_accounts_arns"></a> [trust\_accounts\_arns](#input\_trust\_accounts\_arns) | n/a | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | n/a |
