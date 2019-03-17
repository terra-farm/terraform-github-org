module "module-honeycomb" {
  source          = "modules/module-repository"
  module_name     = "honeycomb"
  provider_name   = "aws"
  homepage_url    = "https://registry.terraform.io/terra-farm/honeycomb/aws"
  repo_admin_team = "${github_team.virtualbox.id}"
  team_permission = "admin"
  has_downloads   = true
}

resource "github_team" "module-honeycomb" {
  name        = "module-honeycomb"
  description = "Team to manage the honeycomb module."
  privacy     = "closed"
}

resource "github_team_membership" "module-honeycomb-Ringo_De_Smet" {
  team_id  = "${github_team.module-honeycomb.id}"
  username = "ringods"
  role     = "maintainer"
}
