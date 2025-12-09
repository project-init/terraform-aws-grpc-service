module "version" {
  source = "project-init/version-manager/aws"
  # Project Init recommends pinning every module to a specific version
  # version = "vX.X.X"

  environment     = "staging"
  service_name    = "service"
  service_version = "v0.1.0"
}