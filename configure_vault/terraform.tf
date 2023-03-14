terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">=0.41.0"
    }
  }

  cloud {
    organization = "brightblueray"

    workspaces {
      name = "oidc-vault-cluster"
    }
  }
}

