terraform {
  backend "s3" {
    bucket          = "rosi"
    key             = "backend/terraform.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "rosi_state_lock"  #dynamodb_table for state locking
    encrypt         = true
  }
}   
