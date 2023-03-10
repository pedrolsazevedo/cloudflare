output "DNS_zones" {
  value = cloudflare_zone.default[*]
}

output "DNSSEC_zones" {
  value = cloudflare_zone_dnssec.default[*]
}

output "Subdomains" {
  value = local.all_subdomains
}