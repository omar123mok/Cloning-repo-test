terraform {
            backend "s3" {
              bucket         = "xpp-shared-services-terraform-state"
              key            = "infrastructure/new-account-name.tfstate"
              region         = "us-east-1"
              encrypt        = true
              dynamodb_table = "xpp-shared-services-terraform-state"
            }
        }
        