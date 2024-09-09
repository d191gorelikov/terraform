data "template_file" "user_data" {
  template = file("/var/terraform/learn-terraform-provisioning/scripts/add-ssh-web-app.yaml")
}

resource "yandex_compute_instance" "vm-1" {
   name = var.name
   zone = var.zone
   platform_id = var.platform_id

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  scheduling_policy {
    preemptible = true
  }




  metadata = {
    user-data = data.template_file.user_data.rendered
  }
}
