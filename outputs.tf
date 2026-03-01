# outputs.tf

output "vnet_id" {
  description = "新建虚拟网络的全局唯一 Resource ID"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_address_space" {
  description = "VNet 的地址空间"
  value       = azurerm_virtual_network.vnet.address_space
}

# 企业级高级用法展示（敏感数据掩码）
output "tenant_id" {
  description = "当前执行环境的租户 ID"
  value       = data.azurerm_client_config.current.tenant_id
  sensitive   = true  # 核心考点：防止流水线日志泄露
}