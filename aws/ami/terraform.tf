terraform {
  backend "s3" {
    region = "ap-northeast-1"
    bucket = "takuan-osho-tfstate-backup"
    key = "config/create-custom-ami.tfstate"
  }
}
