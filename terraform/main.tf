resource "yandex_compute_instance" "nginx" {
  name     = "nginx"
  hostname = "rodionovm.ru"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd855pufihhj6aet2nek"
      size     = 12
    }
  }

  network_interface {
    subnet_id      = yandex_vpc_subnet.subnet-1.id
    nat            = true
    nat_ip_address = var.reserved_ip
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}
