/*Parameters | Networking Stack..*/
module "aws-networking" {
  source                                 = "github.com/mustapha-benmbarek/terraform-aws-core-networking"
  file-vpcs                              = "${local.path.networking}/vpcs.json"
  file-vpc-subnets                       = "${local.path.networking}/vpc-subnets.json"
  file-vpc-internet-gateways             = "${local.path.networking}/vpc-internet-gateways.json"
  file-vpc-elastic-ips                   = "${local.path.networking}/vpc-elastic-ips.json"
  file-vpc-nat-gateways                  = "${local.path.networking}/vpc-nat-gateways.json"
  file-vpc-egress-only-internet-gateways = "${local.path.networking}/vpc-egress-only-internet-gateways.json"
  //file-vpc-carrier-gateways              = "${local.path.networking}/vpc-carrier-gateways.json"
  file-vpc-dhcp-option-sets     = "${local.path.networking}/vpc-dhcp-option-sets.json"
  file-vpc-managed-prefix-lists = "${local.path.networking}/vpc-managed-prefix-lists.json"
  //file-vpc-endpoints                     = "${local.path.networking}/vpc-endpoints.json"
  //file-vpc-endpoint-services             = "${local.path.networking}/vpc-endpoint-services.json"
  //file-vpc-peerings                      = "${local.path.networking}/vpc-peerings.json"
  file-vpc-route-tables             = "${local.path.networking}/vpc-route-tables.json"
  file-placement-groups             = "${local.path.networking}/placement-groups.json"
  file-vpn-customer-gateways        = "${local.path.networking}/vpn-customer-gateways.json"
  file-vpn-virtual-private-gateways = "${local.path.networking}/vpn-virtual-private-gateways.json"
}

/*Parameters | Security Stack..*/
module "aws-security" {
  source               = "github.com/mustapha-benmbarek/terraform-aws-core-security"
  file-key-pairs       = "${local.path.security}/key-pairs.json"
  file-network-acls    = "${local.path.security}/network-acls.json"
  file-security-groups = "${local.path.security}/security-groups.json"
}
