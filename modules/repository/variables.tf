variable provider_name {
  default = ""
}

variable "name" {
  default = ""
}

locals {
  default_name = "terraform-provider-${lower(var.provider_name)}"
  name         = "${var.name == "" ? local.default_name : var.name }"
}

variable "description" {
  default = ""
}

locals {
  default_description = "${var.provider_name} provider for Terraform"
  description         = "${var.description == "" ? local.default_description : var.description }"
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

variable "require_ci_pass" {
  default = true
}

variable "status_checks" {
  type    = list
  default = ["continuous-integration/travis-ci"]
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

locals {
  default_homepage_url = "https://terra-farm.github.com/providers/${local.name}"
  homepage_url         = "${var.homepage_url == "" ? local.default_homepage_url : var.homepage_url}"
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
  default_topics = "${compact(list("${length(var.provider_name) > 0 ? "terraform" : "" }", "${length(var.provider_name) > 0 ? "terraform-provider" : "" }", "${length(var.provider_name) > 0 ? lower(replace(var.provider_name, "_", "-")) : "" }"))}"
  topics         = "${concat(local.default_topics, var.additional_topics)}"
}

variable "additional_topics" {
  type    = list
  default = []
}
