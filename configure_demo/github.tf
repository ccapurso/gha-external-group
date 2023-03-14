# Create the necessary GitHub secrets
data "github_repository" "repo" {
  full_name = "${var.github_user}/${var.github_repository}"
}

# Create a number of GitHub Repo Variables 
resource "github_actions_secret" "secrets" {
  for_each = {
    "VAULT_ADDR"        = var.vault_server_url
    "VAULT_NAMESPACE"   = var.vault_namespace
    "VAULT_SECRET_PATH" = vault_kv_secret_v2.taco.path
    "VAULT_SECRET_KEY"  = "pepper"
    "VAULT_ROLE"        = vault_jwt_auth_backend_role.example.role_name
  }
  secret_name     = each.key
  plaintext_value = each.value
  repository      = var.github_repository
}