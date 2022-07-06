resource"google_compute_instance" "default" { 
	name= "nueva-terraform-madrid" 
	machine_type= "f1-micro"
	zone= "europe-southwest1-a"
	boot_disk{ 
		initialize_params{ 
			image= "ubuntu-1804-bionic-v20200129a" 
		} 
	} 
	network_interface{ 
		network= "default" 
		access_config= { 
			nat_ip= google_compute_address.static.address
		} 
	} 
} 