resource "vault_github_auth_backend" "github_auth" {
  organization = var.github_organization
}

# Create External Vault Group
resource "vault_identity_group" "group" {
  name     = "gha-team"
  type     = "external"
  policies = ["ci-secret-reader"]
}

# Associate External Group to GitHub Team
resource "vault_identity_group_alias" "group-alias" {
  name           = "team-se"
  mount_accessor = vault_github_auth_backend.github_auth.accessor
  canonical_id   = vault_identity_group.group.id
}

# Configure Entities
resource "vault_identity_entity" "rryjewski" {
  name = "rryjewski"
}

resource "vault_identity_entity_alias" "rryjewski_gh" {
  name = "brightblueray"
  canonical_id = vault_identity_entity.rryjewski.id
  mount_accessor = vault_github_auth_backend.github_auth.accessor
}

resource "vault_identity_entity_alias" "rryjewski_jwt" {
  name = "brightblueray"
  canonical_id = vault_identity_entity.rryjewski.id
  mount_accessor = vault_jwt_auth_backend.jwt.accessor
}

resource "vault_identity_entity" "bmiller" {
  name = "brandon.miller"
}
