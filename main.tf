resource "panos_nat_rule" "nat_rule" {
  name                  = var.name
  type                  = var.type
  description           = var.description
  source_zones          = var.source_zones
  destination_zone      = var.destination_zone
  source_addresses      = var.source_addresses
  destination_addresses = var.destination_addresses
  to_interface          = var.to_interface
  service               = var.service
  sat_type              = var.sat_type
  sat_address_type      = var.sat_address_type
  sat_interface         = var.sat_interface
  sat_ip_address        = var.sat_ip_address
  dat_type              = var.dat_type
  dat_address           = var.dat_address
  dat_port              = var.dat_port

  lifecycle {
    create_before_destroy = true
  }
}




