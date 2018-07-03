resource "github_team" "virtualbox" {
  name        = "virtualbox"
  description = "Team to manage the virtualbox provider"
  privacy     = "closed"
}

resource "github_team_membership" "virtualbox-Cai_Lei" {
  team_id  = "${github_team.virtualbox.id}"
  username = "ccll"
  role     = "maintainer"
}

resource "github_team_membership" "virtualbox-Ringo_De_Smet" {
  team_id  = "${github_team.virtualbox.id}"
  username = "ringods"
  role     = "maintainer"
}

resource "github_team_membership" "virtualbox-Rio_Bard" {
  team_id  = "${github_team.virtualbox.id}"
  username = "riobard"
  role     = "maintainer"
}
