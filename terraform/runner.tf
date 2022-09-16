resource "yandex_compute_instance" "runner" {
  name     = "runner"
  hostname = "runner.rodionovm.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd855pufihhj6aet2nek"
      size     = 12
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = false
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}
