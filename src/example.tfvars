account_id = "EXAMPLE-ID-829E90B16D9141FCB3863EA49A524451"
zone_data = {
  "example_com" = {
    name       = "example.com"
    jump_start = false
    paused     = false
    plan       = "free"
    type       = "full"
    subdomain_data = {
      "eggxample.example.com" = {
        name     = "eggxample"
        value    = "192.168.0.1"
        type     = "A"
        ttl      = 360
        comment  = "Simple subdomain example entry"
        priority = 10
    } }
  },
  "example_io" = {
    name       = "example.io"
    jump_start = false
    paused     = false
    plan       = "free"
    type       = "full"
    subdomain_data = {
      "eggxample.example.com" = {
        name     = "eggxample"
        value    = "192.168.0.1"
        type     = "A"
        ttl      = 360
        comment  = "Simple subdomain example entry"
        priority = 10
      },
      "breadxample.example.com" = {
        name     = "breadxample"
        value    = "192.168.0.2"
        type     = "A"
        ttl      = 360
        comment  = "Simple subdomain example entry"
        priority = 10
      }
    }
  }
}