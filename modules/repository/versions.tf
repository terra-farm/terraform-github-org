terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.9.2"
    }
  }
  required_version = ">= 0.13"
}
