module "config" {
  source  = "cloudposse/config/yaml"
  version = "1.0.1"
}
  
provider "github" {
  organization = "SynergyDevops"
  #version = "~> 4.0"
}

