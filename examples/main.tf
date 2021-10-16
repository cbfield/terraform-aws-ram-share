module "my_ram_share" {
  source = "../"

  name = "my-ram-share"

  associated_principals = [
    "111222333444", # AWS account ID for another AWS account
  ]

  # Shareable resources:
  # https://docs.aws.amazon.com/ram/latest/userguide/shareable.html
  associated_resources = [
    "arn:aws:rds:us-west-2:222333444555:cluster:my-db-cluster-or-whatever",
  ]

  tags = {
    "something" = "something-else"
  }
}
