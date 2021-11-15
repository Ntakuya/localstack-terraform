variable "region" {
    description = "This is Region on AWS"
    type = string
    default = "ap-northeast-1"
}

variable "environment" {
    description = "This is the environmen where your webapp is deployed"
    type = string
}

variable "app" {
    description = "This is Application Name"
    type = string
    default = "localstack_terraform"
}

variable "aws_access_key" {
    type = string
    description = "AWS Access Key"
}

variable "aws_secret_key" {
    type = string
    description = "AWS Access Key"
}