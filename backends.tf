terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "anir989"
    dynamodb_table = "terraformstatelock"
    region         = "us-east-2"
    key            = "terraform.tfstate"
  }
}
