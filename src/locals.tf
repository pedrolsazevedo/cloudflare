locals {
  all_subdomains = flatten([
    for zk, zv in var.zone_data : [
      for sk, sv in zv.subdomain_data : {
        zk       = zk
        sk       = zv.name
        name     = sv["name"]
        value    = sv["value"]
        type     = sv["type"]
        ttl      = sv["ttl"]
        comment  = sv["comment"]
        priority = sv["priority"]
      }
    ]
  ])
}