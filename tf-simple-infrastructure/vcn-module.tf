module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.5.3"
  # insert the 5 required variable here

  # Required Inputs
  compartment_id = oci_identity_compartment.tf-compartment.id
  region = "ca-toronto-1"

  internet_gateway_route_rules = null
  local_peering_gateways = null
  nat_gateway_route_rules = null

  # Optional Inputs
  vcn_name = "vcn01"
  vcn_dns_label = "vcn01"
  vcn_cidrs = ["10.0.0.0/16"]
  
  create_internet_gateway = true
  create_nat_gateway = true
  create_service_gateway = true  
}