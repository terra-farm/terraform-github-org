module "octopus" {
  source            = "./modules/repository"
  provider_name     = "Octopus"
  repo_admin_team   = github_team.octopus.id
  team_permission   = "admin"
  additional_topics = ["octopus-deploy"]
  has_downloads     = true
}

resource "github_team" "octopus" {
  name        = "octopus"
  description = "Team to manage the Octopus provider"
  privacy     = "closed"
}

resource "github_team_membership" "octopus-Adam_Friedman" {
  team_id  = github_team.octopus.id
  username = "tintoy"
  role     = "maintainer"
}
