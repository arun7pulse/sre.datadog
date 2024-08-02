terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    datadog = {
      source  = "datadog/datadog"
      version = "~> 3.0"
    }
  }
}

# Load environment-specific variables
variable "environment" {
  description = "The environment to deploy to (dev, stg, qas)"
  type        = string
}

# Import other modules or resources if needed
