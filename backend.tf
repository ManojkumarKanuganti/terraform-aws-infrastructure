
terraform {
  backend "s3" {
    bucket       = "terraform-aws-state-456291"
    key          = "terraform-aws-infrastructure/terraform.tfstate"
    region       = "ap-south-1"
    profile      = "terraform-admin"
    use_lockfile = true
    encrypt      = true
  }
}