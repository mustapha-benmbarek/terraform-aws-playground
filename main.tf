/*Networking Stack..*/
module "aws-networking" {
  source                                 = "github.com/mustapha-benmbarek/terraform-aws-core-networking"
  file-vpcs                              = "${local.path.networking}/vpcs.json"
  file-vpc-subnets                       = "${local.path.networking}/vpc-subnets.json"
  file-vpc-internet-gateways             = "${local.path.networking}/vpc-internet-gateways.json"
  file-vpc-elastic-ips                   = "${local.path.networking}/vpc-elastic-ips.json"
  file-vpc-nat-gateways                  = "${local.path.networking}/vpc-nat-gateways.json"
  file-vpc-egress-only-internet-gateways = "${local.path.networking}/vpc-egress-only-internet-gateways.json"
  file-vpc-carrier-gateways              = "${local.path.networking}/vpc-carrier-gateways.json"
  file-vpc-dhcp-option-sets              = "${local.path.networking}/vpc-dhcp-option-sets.json"
  file-vpc-managed-prefix-lists          = "${local.path.networking}/vpc-managed-prefix-lists.json"
  file-vpc-endpoints                     = "${local.path.networking}/vpc-endpoints.json"
  file-vpc-endpoint-services             = "${local.path.networking}/vpc-endpoint-services.json"
  file-vpc-peerings                      = "${local.path.networking}/vpc-peerings.json"
  file-vpc-route-tables                  = "${local.path.networking}/vpc-route-tables.json"
  file-placement-groups                  = "${local.path.networking}/placement-groups.json"
  file-vpn-customer-gateways             = "${local.path.networking}/vpn-customer-gateways.json"
  file-vpn-virtual-private-gateways      = "${local.path.networking}/vpn-virtual-private-gateways.json"
}

/*Security Stack..
module "aws-security" {
  source                       = "github.com/mustapha-benmbarek/terraform-aws-core-security"
  data-vpcs                    = module.aws-networking.vpcs
  data-vpc-subnets             = module.aws-networking.vpc-subnets
  file-key-pairs               = "${local.path.security}/key-pairs.json"
  file-network-acls            = "${local.path.security}/network-acls.json"
  file-acm-public-certificates = "${local.path.security}/acm-public-certificates.json"
}

/*Database Stack..
module "aws-database" {
  source                           = "github.com/mustapha-benmbarek/terraform-aws-core-database"
  data-vpcs                        = module.aws-networking.vpcs
  data-vpc-subnets                 = module.aws-networking.vpc-subnets
  file-rds-aurora-mysql-dbs        = "${local.path.database}/rds-aurora-mysql-dbs.json"
  file-rds-aurora-postgresql-dbs   = "${local.path.database}/rds-aurora-postgresql-dbs.json"
  file-rds-mysql-dbs               = "${local.path.database}/rds-mysql-dbs.json"
  file-rds-postgresql-dbs          = "${local.path.database}/rds-postgresql-dbs.json"
  file-rds-mariadb-dbs             = "${local.path.database}/rds-mariadb-dbs.json"
  file-rds-oracle-dbs              = "${local.path.database}/rds-oracle-dbs.json"
  file-rds-mssql-dbs               = "${local.path.database}/rds-mssql-dbs.json"
  file-documentdb-dbs              = "${local.path.database}/documentdb-dbs.json"
  file-documentdb-subnet-groups    = "${local.path.database}/documentdb-subnet-groups.json"
  file-documentdb-parameter-groups = "${local.path.database}/documentdb-parameter-groups.json"
  file-neptune-dbs                 = "${local.path.database}/neptune-dbs.json"
  file-neptune-subnet-groups       = "${local.path.database}/neptune-subnet-groups.json"
  file-neptune-parameter-groups    = "${local.path.database}/neptune-parameter-groups.json"
  file-elasticache-dbs             = "${local.path.database}/elasticache-dbs.json"
  file-memorydb-redis-dbs          = "${local.path.database}/memorydb-redis-dbs.json"
  file-quantum-ledger-dbs          = "${local.path.database}/quantum-ledger-dbs.json"
  file-keyspaces-dbs               = "${local.path.database}/keyspaces-dbs.json"
  file-timestream-dbs              = "${local.path.database}/timestream-dbs.json"
}
*/