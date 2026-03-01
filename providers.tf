# providers.tf
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.10.0" # 悲观约束操作符，锁定大版本号，生产环境好习惯
    }
  }
}

provider "azurerm" {
  features {}
  # 针对 Azure 21Vianet 世纪互联环境的必须配置
  environment = "china" 

  # 【新增】强制显式声明目标订阅，控制爆炸半径
  subscription_id = var.subscription_id
}