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
  name           = "ccapurso_github_actions_demo"
  mount_accessor = vault_github_auth_backend.github_auth.accessor
  canonical_id   = vault_identity_group.group.id
}

# Configure Entities
resource "vault_identity_entity" "ccapurso" {
  name = "ccapurso"
}

resource "vault_identity_entity_alias" "ccapurso_gh" {
  name = "ccapurso"
  canonical_id = vault_identity_entity.ccapurso.id
  mount_accessor = vault_github_auth_backend.github_auth.accessor
}

resource "vault_identity_entity_alias" "ccapurso_jwt" {
  name = "ccapurso"
  canonical_id = vault_identity_entity.ccapurso.id
  mount_accessor = vault_jwt_auth_backend.jwt.accessor
}

resource "vault_identity_entity" "dahlke" {
  name = "neil.dahlke"
}

resource "vault_identity_entity_alias" "dahlke_gh" {
  name = "dahlke"
  canonical_id = vault_identity_entity.dahlke.id
  mount_accessor = vault_github_auth_backend.github_auth.accessor
}

resource "vault_identity_entity_alias" "dahlke_jwt" {
  name = "dahlke"
  canonical_id = vault_identity_entity.dahlke.id
  mount_accessor = vault_jwt_auth_backend.jwt.accessor
}
