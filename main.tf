resource "google_compute_instance" "default" {
	name = "virtual-machine-from-terraform"
	machine_type = "n2-medium"
	zone = "us-central1-c"
	
	boot_disk {
		initialize_params {
			image = var.ubuntu_2004_sku			
     }
  }
  
  network_interface {
	network = google_compute_network.vpc.name
	subnetwork = google_compute_subnetwork.network_subnet.name
		access_config {}
  }
}

