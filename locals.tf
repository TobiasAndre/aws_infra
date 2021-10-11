locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "AWS com Terraform"
    CreatedAt = "2021-10-10"
    ManagedBy = "Terraform"
    Owner     = "Tobias Andre Eggers"
    Service   = "Auto Scaling App"
  }
}