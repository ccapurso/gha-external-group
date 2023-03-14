resource "vault_github_auth_backend" "github_auth" {
  organization = var.github_organization
}

# Create External Vault Group
resource "vault_identity_group" "group" {
  name     = "gha-team"
  type     = "external"
  policies = ["ci-secret-reader"]
}

# # Create Vault Auth Backend
# resource "vault_auth_backend" "github" {
#   type = "github"
# }

# Associate External Group to GitHub Team
resource "vault_identity_group_alias" "group-alias" {
  name           = "team-se"
  mount_accessor = vault_github_auth_backend.github_auth.accessor
  canonical_id   = vault_identity_group.group.id
}