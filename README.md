## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.3.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.0.0 |

1. [Cloudflare API Token](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)

2. Create an environment variable with the value as described in [Terraform Cloudflare Provider Documentation](https://registry.terraform.io/providers/cloudflare/cloudflare/latest)

```shell
export CLOUDFLARE_API_TOKEN="SAMPLE_VALUE_F7964E4AF8964366B210785A9BABEAC9"
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.default](https://registry.terraform.io/providers/cloudflare/cloudflare/4.0.0/docs/resources/record) | resource |
| [cloudflare_zone.default](https://registry.terraform.io/providers/cloudflare/cloudflare/4.0.0/docs/resources/zone) | resource |
| [cloudflare_zone_dnssec.default](https://registry.terraform.io/providers/cloudflare/cloudflare/4.0.0/docs/resources/zone_dnssec) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | (String) Account ID to manage the zone resource in. | `string` | n/a | yes |
| <a name="input_zone_data"></a> [zone\_data](#input\_zone\_data) | (Required) Zone structure to create zones and sub-domains. | <pre>map(object({<br>    name       = string<br>    jump_start = optional(bool, false)<br>    paused     = optional(bool, false)<br>    plan       = optional(string, "free")<br>    type       = optional(string, "full")<br>    subdomain_data = optional(map(object({<br>      name     = optional(string)<br>      value    = optional(string)<br>      type     = optional(string)<br>      ttl      = optional(number, 3600)<br>      comment  = optional(string)<br>      priority = optional(number)<br>    })))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_DNSSEC_zones"></a> [DNSSEC\_zones](#output\_DNSSEC\_zones) | n/a |
| <a name="output_DNS_zones"></a> [DNS\_zones](#output\_DNS\_zones) | n/a |
| <a name="output_Subdomains"></a> [Subdomains](#output\_Subdomains) | n/a |

## Extra tools used:
1. [Commitezen](https://commitizen-tools.github.io/)

2. [terraform-docs](https://terraform-docs.io/)

## Bonus content

1. Very nice song: 
  [500 Miles - Inside Llewyn Davis](https://www.youtube.com/watch?v=HAZJAzCshN4)
