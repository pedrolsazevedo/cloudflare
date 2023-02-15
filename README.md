## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.3.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.0.0 |

Cloudflare API Token with the following permission:
```
Zone Settings:Edit, Zone:Edit, DNS:Edit
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
| <a name="output_var"></a> [var](#output\_var) | n/a |

## Repository information
Using commitizen to enforce versions.