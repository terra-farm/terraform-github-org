module "xenorchestra" {
  source        = "./modules/repository"
  provider_name = "XenOrchestra"

  #homepage_url      = "https://terra-farm.github.io/provider-xenorchestra/"
  repo_admin_team   = github_team.xenorchestra.id
  team_permission   = "admin"
  additional_topics = ["xenorchestra", "xen", "xcp-ng", "hacktoberfest"]
  has_downloads     = true
}

resource "github_team" "xenorchestra" {
  name        = "xenorchestra"
  description = "Team to manage the xenorchestra provider"
  privacy     = "closed"
}

resource "github_team_membership" "xenorchestra-Dom_Del_Nano" {
  team_id  = github_team.xenorchestra.id
  username = "ddelnano"
  role     = "maintainer"
}
