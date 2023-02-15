terraform {
  required_version = ">1.3.0"
  backend "local" {}
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.0.0"
    }
  }
}