module "module-honeycomb" {
  source          = "./modules/module-repository"
  module_name     = "honeycomb"
  provider_name   = "aws"
  homepage_url    = "https://registry.terraform.io/modules/terra-farm/honeycomb/aws"
  repo_admin_team = github_team.module-honeycomb.id
  team_permission = "admin"
  has_downloads   = true
}

resource "github_team" "module-honeycomb" {
  name        = "module-honeycomb"
  description = "Team to manage the honeycomb module."
  privacy     = "closed"
}

resource "github_team_membership" "module-honeycomb-Ringo_De_Smet" {
  team_id  = github_team.module-honeycomb.id
  username = "ringods"
  role     = "maintainer"
}

# Honeycomb contributors to https://github.com/honeycombio/agentless-integrations-for-aws
resource "github_team_membership" "module-honeycomb-Travis_Redman" {
  team_id  = github_team.module-honeycomb.id
  username = "tredman"
  role     = "member"
}

resource "github_team_membership" "module-honeycomb-Ben_Hartshorne" {
  team_id  = github_team.module-honeycomb.id
  username = "maplebed"
  role     = "member"
}
