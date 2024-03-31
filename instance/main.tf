resource "google_compute_instance" "vm_instance" {
    name = "${var.instance_name}"
    zone = "${var.instance_zone}"
    machine_type = "${var.instance_type}"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }
    network_interface {
        network = "${var.instance_network}"
        access_config {
            # This property defines the network interface by providing the network name as an input 
            # variable and the access configuration. Leaving the access configuration empty results 
            # in an ephemeral external IP address (required in this lab). To create instances with 
            # only an internal IP address, remove the `access_config` section.
            # Allocate a one-to-one NAT IP to the instance
        }
    }
}