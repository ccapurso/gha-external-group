variable "vault_server_url" {
  type        = string
  description = "(Required) The URL of the Vault server"
  default     = ""
}

variable "vault_namespace" {
  type        = string
  description = "(Required) The Namespace to be used with Vault"
  default     = "admin" # admin is the default namespace with HCP Vault
}

variable "github_organization" {
  type        = string
  description = "(Required) The GitHub organization for Vault Github Auth Backend"
  default     = "hashicorp"
}

variable "github_repository" {
  type        = string
  description = "(Required) The GitHub repository for the JWT authentication role."
  default     = "gha-external-group"
}

variable "github_user" {
  type        = string
  description = "(Required) The GitHub organization or username for the JWT authentication role."
  default     = "ccapurso"
}

variable "docker_pat" {
  type        = string
  description = "(Required) A Valid PAT for Docker Hub"
}

variable "docker_user" {
  type        = string
  description = "(Required) User for Docker Hub"
  default     = "ccapurso"
}
