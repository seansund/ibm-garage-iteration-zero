module "dev_tools_argocd" {
  source = "github.com/ibm-garage-cloud/terraform-tools-argocd.git"

  cluster_config_file = module.dev_cluster.config_file_path
  cluster_type        = module.dev_cluster.type_code
  olm_namespace       = module.dev_software_olm_release.olm_namespace
  operator_namespace  = module.dev_software_olm_release.target_namespace
  app_namespace       = module.dev_cluster_namespaces.tools_namespace_name
  ingress_subdomain   = module.dev_cluster.ingress_hostname
  name                = "argocd"
}
