provider "aws" {
  region                      = "eu-central-2"
  access_key                  = "any_access_key"
  secret_key                  = "any_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3 = "http://s3.localhost.localstack.cloud:4566"
  }
}
