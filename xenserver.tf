module "go-xen-api-client" {
  source            = "./modules/repository"
  name              = "go-xen-api-client"
  description       = "Go XenAPI client"
  repo_admin_team   = github_team.xenserver.id
  team_permission   = "admin"
  additional_topics = ["golang", "xapi", "xenapi", "xenapi-client"]
}

module "xenserver" {
  source            = "./modules/repository"
  provider_name     = "XenServer"
  homepage_url      = "https://github.com/xenserver/terraform-provider-xenserver"
  repo_admin_team   = github_team.xenserver.id
  team_permission   = "admin"
  additional_topics = ["xenserver", "xen", "xcp-ng"]
  has_downloads     = true
  archived          = true
}

resource "github_team" "xenserver" {
  name        = "xenserver"
  description = "Team to manage the XenServer provider"
  privacy     = "closed"
}

resource "github_team_membership" "xenserver-Ringo_De_Smet" {
  team_id  = github_team.xenserver.id
  username = "ringods"
  role     = "maintainer"
}
