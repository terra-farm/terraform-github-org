module "go-virtualbox" {
  source            = "modules/repository"
  name              = "go-virtualbox"
  description       = "VirtualBox wrappers in Go"
  repo_admin_team   = "${github_team.virtualbox.id}"
  team_permission   = "admin"
  additional_topics = ["golang", "virtualbox"]
}

module "virtualbox" {
  source            = "modules/repository"
  provider_name     = "VirtualBox"
  repo_admin_team   = "${github_team.virtualbox.id}"
  team_permission   = "admin"
  additional_topics = ["virtualbox"]
  has_downloads     = true
}

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
