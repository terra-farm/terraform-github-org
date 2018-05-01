resource "github_team" "xenserver" {
  name        = "xenserver"
  description = "Team to manage the XenServer provider"
  privacy     = "closed"
}

resource "github_team_membership" "xenserver-Ringo_De_Smet" {
  team_id  = "${github_team.xenserver.id}"
  username = "ringods"
  role     = "maintainer"
}
