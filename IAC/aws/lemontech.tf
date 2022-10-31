locals {
  env       = "prod"
  project   = "lemontech"
}

module "lemontech-simple-app" {
    source          = "git@github.com:esleirter/IAAC-modules.git//terraform/aws/lemontech-simple-app?ref=master"
    #source          = "../../../IAAC-modules/terraform/aws/lemontech-simple-app/"
    env             = "${local.env}"
    project         = "${local.project}"
    k8s_version     = "1.23"
    cidr_block_vpc  = "10.0.0.0/16"
    cidr_block_pri  = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
    cidr_block_pub  = ["10.0.96.0/19", "10.0.128.0/19", "10.0.160.0/19"]
}
