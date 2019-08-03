resource "azurerm_resource_group" "aks_rg" {
  name      = "${var.Project}-${var.environment}-rg"
  location  = "${var.location}"
  tags  {
      Environment   = "${var.environment}"
      Project       = "${var.project_name}"
  }
}

output "resource_group_name" {
  value = "${azurerm_resource_group.aks_rg.name}"
}
