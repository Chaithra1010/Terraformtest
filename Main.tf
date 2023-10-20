resource "azurerm_resource_group" "test" {
    name = "testrf"
    location = "eastus"

}

resource "azurerm_kubernetes_cluster" "test" {
    name = "akscluster"
    location = azurerm_resource_group.test.location
    resource_group_name = azurerm_resource_group.test.name
    dns_prefix = "aksdns"

  default_node_pool {
    name = "default"
    node_count = 1
    vm_size = "standard_D2_V2"


 

  }

 

  identity {
    type = "SystemAssigned"
  }
  }
  

