terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_91c0837abaaf1b6cef1176d5dc26b9ef9bb3d24d97b9396519076e0b64aece5d"
}

resource "digitalocean_kubernetes_cluster" "k8s-iniciativa" {
  name   = "k8s-iniciativa"
  region = "nyc1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}