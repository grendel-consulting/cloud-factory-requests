# Cloud Factory Requests

Boilerplate configuration for creating requests for new AWS Accounts through the Account Factory for Terraform module. It's pipeline requires the specific structure used and the included submodule to define a DynamoDB table item with the account specifications.

## Deployment

Deployment occurs on merge to main, triggering an AWS CodePipeline in the factory management OU; it is not speculatively planned through GitHub Actions as the buildspec hydrates the providers and backends through the Jinga templates.

## Further Reading

See: [AFT Account Request](https://github.com/aws-ia/terraform-aws-control_tower_account_factory/blob/main/sources/aft-customizations-repos/aft-account-request/README.md)
