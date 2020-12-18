# Terraform module: AWS IAM Roles

This Terraform module can create an arbitrary number of IAM roles with policies and trusted
entities defined as JSON or templatable json files files.


## Usage

### Assumeable roles

```hcl
module "ssm_store" {
  source = "github.com/flaconi/terraform-aws-ssm-store?ref=v0.0.1"

  # tags =  {
   "Created by" = "terraform"

  }
  kms_alias =  "alias/aws/ssm"

  name_prefix = "/applications/app1"
  # overwrite = true
  parameters = [
  {
    name      = "secure"
    value     = "securevalue"
    type      = "SecureString"
    overwrite = true
  },
  {
    name      = "secure2"
    value     = "securevalue2"
    type      = "SecureString"
    overwrite = true
  },
  {
    name      = "insecure"
    value     = "insecurevalue"
    type      = "String"
    overwrite = true
  },
]
}
```



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| kms\_alias | kms_alias sets the kms alias used for SecureString | string | `"alias/aws/ssm"` | no |
| name\_prefix | name_prefix prefixes the given name with a prefix | string | `""` | no |
| overwrite | overwrite defines if we overwrite existing params | bool | `"true"` | no |
| parameters | A list of dicts with parameter information | object | `[]` | no |
| tags |  | map | `{}` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT License](LICENSE)
