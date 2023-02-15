resource "cloudflare_zone" "default" {
  for_each   = { for zone in var.zone_data : zone.name => zone }
  account_id = var.account_id
  zone       = each.value.name
  jump_start = each.value.jump_start
  paused     = each.value.paused
  plan       = each.value.plan
  type       = each.value.type
}

resource "cloudflare_zone_dnssec" "default" {
  for_each = { for zone in var.zone_data : zone.name => zone }
  zone_id  = cloudflare_zone.default[each.key].id
}

