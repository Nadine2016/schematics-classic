variable "softlayer_username" {}
variable "softlayer_api_key" {}

provider "ibm" {
  region = "us-south"
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key  = "${var.softlayer_api_key}"
}

resource "ibm_compute_vm_instance" "vm1" {
hostname = "vm1"
domain = "example.com"
os_reference_code = "DEBIAN_8_64"
datacenter = "dal10"
network_speed = 10
hourly_billing = true
private_network_only = false
cores = 1
memory = 1024
disks = [25]
local_disk = false
}
