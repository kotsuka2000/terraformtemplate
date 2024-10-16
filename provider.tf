terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "~> 2.0"
    }
  }
}

provider "pagerduty" {
  token = var.pagerduty_token
}