resource "github_team" "octopus" {
  name        = "octopus"
  description = "Team to manage the Octopus provider"
  privacy     = "closed"
}

resource "github_team_membership" "octopus-Adam_Friedman" {
  team_id  = "${github_team.octopus.id}"
  username = "tintoy"
  role     = "maintainer"
}
