output "vault_public_endpoint_url" {
  value = hcp_vault_cluster.demo_cluster.vault_public_endpoint_url
}

output "vault_admin_token" {
  # value = nonsensitive(hcp_vault_cluster_admin_token.demo.token)
  value = hcp_vault_cluster_admin_token.demo.token
}