module "dev_infrastructure_sysdig" {
  source = "github.com/ibm-garage-cloud/garage-terraform-modules.git//cloud-managed/services/sysdig?ref=v2.5.0"

  resource_group_name      = module.dev_cluster.resource_group_name
  resource_location        = module.dev_cluster.region
  cluster_config_file_path = module.dev_cluster.config_file_path
  cluster_type             = module.dev_cluster.type
  name_prefix              = var.name_prefix
  namespace                = module.dev_sre_namespace.name
  tags                     = [module.dev_cluster.tag]
  name                     = ""
  exists                   = var.sysdig_exists
}
