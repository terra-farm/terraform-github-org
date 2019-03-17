variable module_name {
  description = "Name of the terraform module."
}

variable provider_name {
  description = "Name of the terraform provider this module is for."
}

locals {
  repository_name = "terraform-${lower(var.provider_name)}-${lower(var.module_name)}"
}

variable "description" {
  default     = ""
  description = "Description of the Git repository."
}

variable "repo_admin_team" {
  description = "ID of the team that should own the repo, gives push access"
}

variable "homepage_url" {
  default     = ""
  description = "Home page URL for the Git repo"
}

variable "enforce_admins" {
  default = false
}

variable "has_wiki" {
  default = false
}

variable "has_projects" {
  default = false
}

variable "has_downloads" {
  default = false
}

variable "team_permission" {
  default = "push"
}

# Pull Request Reviews
variable "dismiss_stale_reviews" {
  default = true
}

variable "require_code_owner_reviews" {
  default = false
}

variable "archived" {
  default = false
}

locals {
  default_topics = ["terraform", "terraform-module", "${var.provider_name}", "${var.module_name}"]
  topics         = "${concat(local.default_topics, var.additional_topics)}"
}

variable "additional_topics" {
  type    = "list"
  default = []
}
