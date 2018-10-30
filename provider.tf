provider "github" {
  version      = "~> 1.3"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}
