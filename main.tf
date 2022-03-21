resource "tfe_agent_pool" "test-agent-pool" {
  name         = "my-agent-pool-name"
  organization = var.organization_name
}

resource "tfe_agent_token" "test-agent-token" {
  agent_pool_id = tfe_agent_pool.test-agent-pool.id
  description   = "my-agent-token-name"
}

output "agent_token" {
    value = tfe_agent_token.test-agent-token.token
    sensitive = true
}