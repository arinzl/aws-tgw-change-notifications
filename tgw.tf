module "tgw" {
  source  = "terraform-aws-modules/transit-gateway/aws"
  version = "2.9.0"

  name            = "demo-tgw"
  description     = "TGW shared with other AWS accounts"
  amazon_side_asn = 64532

  enable_auto_accept_shared_attachments = true

  ram_allow_external_principals = true

  tags = local.tags_generic
}
