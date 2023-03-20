locals {
        environment = "my-account-type"
        workload    = "new-account-name"
        alias       = "new-account-name"
        tags        = merge(local.common-tags, { env = "my-account-type" })
      }

      module "iam" {
        source                  = "../../modules/iam"
        alias                   = local.alias
        tags                    = local.tags
        allow-manual-parameters = true
        ec2-ssm-role            = true
        cloudability-eid        = "my-account-cloudability-eid"
      }

      module "config" {
        source = "../../modules/config"
        tags   = local.tags
      }

      module "s3" {
        source = "../../modules/s3"
      }
      