terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.3.0"
    }
  }
}
provider "github" {
  organization = "SynergyDevops"
  #version = "~> 4.0"
  owner = "my-org"
}

resource "github_branch_protection_v3" "example" {
  repository     = github_repository.example.name
  branch         = "main"
  enforce_admins = true
  require_signed_commits = true

  required_status_checks {
    strict   = false
    contexts = ["ci/travis"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    dismissal_users       = ["test3-user"]
    dismissal_teams       = [github_team.example.slug]
    required_approving_review_count = 2
    require_code_owner_reviews = false
  }

resource "github_repository" "example" {
  name = "test3"}
}
