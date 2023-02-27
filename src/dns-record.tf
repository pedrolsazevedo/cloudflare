resource "cloudflare_record" "default" {
  for_each = { for s in local.all_subdomains : s.sk => s }
  zone_id  = cloudflare_zone.default[each.key].id
  name     = each.value.name
  value    = each.value.value
  type     = each.value.type
  ttl      = each.value.ttl
}