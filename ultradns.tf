resource "github_team" "ultradns" {
  name        = "ultradns"
  description = "Team to manage the ultradns provider"
  privacy     = "closed"
}

resource "github_team_membership" "ultradns-J_Masseo" {
  team_id  = "${github_team.ultradns.id}"
  username = "jmasseo"
  role     = "maintainer"
}

resource "github_team_membership" "ultradns-Joseph_Anthony_Pasquale_Holsten" {
  team_id  = "${github_team.ultradns.id}"
  username = "josephholsten"
  role     = "maintainer"
}

resource "github_team_membership" "ultradns-Justin_Pace" {
  team_id  = "${github_team.ultradns.id}"
  username = "jtpace"
  role     = "maintainer"
}

resource "github_team_membership" "ultradns-Matthew_Robinson" {
  team_id  = "${github_team.ultradns.id}"
  username = "mlrobinson"
  role     = "maintainer"
}
