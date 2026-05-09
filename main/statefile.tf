terraform {
  backend "s3" {
    bucket  = "github-terraform-bucket"
    key     = "infra.tfstate"
    region  = "us-west-1"
    profile = "default"
    dynamodb_table = "vegeta-terraform-remote-state-table"
  }
}
