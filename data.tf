// Fetches the AWS account ID, user ARN, and user ID
data "aws_caller_identity" "identity" {}

// Fetches the AWS region from the provider configuration
data "aws_region" "region" {}
