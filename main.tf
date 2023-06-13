/*Parameters..*/
module "aws-networking" {
  source                                 = "github.com/mustapha-benmbarek/terraform-aws-core-networking"
  file-vpcs                              = "${path.module}/parameters/vpcs.json"
  file-vpc-subnets                       = "${path.module}/parameters/vpc-subnets.json"
  file-vpc-internet-gateways             = "${path.module}/parameters/vpc-internet-gateways.json"
  file-vpc-elastic-ips                   = "${path.module}/parameters/vpc-elastic-ips.json"
  file-vpc-nat-gateways                  = "${path.module}/parameters/vpc-nat-gateways.json"
  file-vpc-egress-only-internet-gateways = "${path.module}/parameters/vpc-egress-only-internet-gateways.json"
  //file-vpc-carrier-gateways              = "${path.module}/parameters/vpc-carrier-gateways.json"
  file-vpc-dhcp-option-sets     = "${path.module}/parameters/vpc-dhcp-option-sets.json"
  file-vpc-managed-prefix-lists = "${path.module}/parameters/vpc-managed-prefix-lists.json"
  //file-vpc-endpoints                     = "${path.module}/parameters/vpc-endpoints.json"
  //file-vpc-endpoint-services             = "${path.module}/parameters/vpc-endpoint-services.json"
  // file-vpc-peerings = "${path.module}/parameters/vpc-peerings.json"
  //file-vpc-route-tables = "${path.module}/parameters/vpc-route-tables.json"
}

