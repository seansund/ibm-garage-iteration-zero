module "dev_software_olm_release" {
  source = "github.com/ibm-garage-cloud/garage-terraform-modules.git//self-managed/software/operator-lifecycle-manager?ref=v2.5.0"

  cluster_config_file      = module.dev_cluster.config_file_path
  cluster_version          = module.dev_cluster.version
  cluster_type             = module.dev_cluster.type
  olm_version              = "0.14.1"
}
