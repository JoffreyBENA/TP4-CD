provider "google" {
  credentials = file("<path_to_service_account_key_file>")
  project     = "<project_id>"
  region      = "<region>"
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-vm-instance"
  machine_type = "e2-small"
  zone         = "<zone>"

  boot_disk {
    initialize_params {
      image = "<image_name>"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = file("<path_to_startup_script>")
}
