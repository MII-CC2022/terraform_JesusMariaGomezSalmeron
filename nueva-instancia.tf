resource "google_compute_address" "static" {
        name = "ip-mv"
}

resource"google_compute_instance" "default" {
        name = "nueva-terraform-madrid"
        machine_type = "e2-micro"
        zone = "europe-southwest1-a"
        boot_disk{
                initialize_params{
                        image = "ubuntu-1804-bionic-v20200129a"
                }
        }
        network_interface{
                network = "default"
                access_config {
                        nat_ip = google_compute_address.static.address
                }
        }
}

