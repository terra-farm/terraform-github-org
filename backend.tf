terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "terra-farm"

    workspaces {
      name = "terraform-github-org"
    }
  }
}
