resource "github_repository" "repository" {
  name         = local.name
  description  = local.description
  homepage_url = var.homepage_url

  visibility         = "public"
  has_issues         = true
  has_wiki           = var.has_wiki
  has_projects       = var.has_projects
  allow_merge_commit = false
  allow_squash_merge = false
  allow_rebase_merge = false
  has_downloads      = var.has_downloads
  archived           = var.archived
  topics             = local.topics
}

resource "github_team_repository" "restricted_access" {
  team_id    = var.repo_admin_team
  repository = github_repository.repository.name
  permission = var.team_permission
}
