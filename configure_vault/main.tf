# Create a HVN or use an existing if you already have one.
# resource "hcp_hvn" "hvn" {
#   hvn_id         = var.vault_cluster_id
#   cloud_provider = "aws"
#   region         = "us-east-2"
#   cidr_block     = "172.25.16.0/20"
# }

# HashiCorp Virtual Network (AWS VPC)
data "hcp_hvn" "hvn" {
  hvn_id = var.hcp_hvn_id
}

# Create a Small Demo Cluster ($0.03/hr or about $20/month)
resource "hcp_vault_cluster" "demo_cluster" {
  cluster_id        = var.vault_cluster_id
  hvn_id            = data.hcp_hvn.hvn.hvn_id
  tier              = var.vault_cluster_tier
  min_vault_version = var.min_vault_version
  public_endpoint   = var.enable_vault_public_endpoint
}


resource "hcp_vault_cluster_admin_token" "demo" {
  cluster_id = hcp_vault_cluster.demo_cluster.cluster_id
}