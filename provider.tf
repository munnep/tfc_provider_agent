terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.28.1"
    }
  }
}

provider "tfe" {
  # Configuration options
}