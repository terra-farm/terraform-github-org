provider "github" {
  version      = "~> 2.6"
  token        = var.github_token
  organization = var.github_organization
}
