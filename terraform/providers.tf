terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }


  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "diplom-rodionov"
    region     = "ru-central1"
    key        = "./prod/state.tfstate"
    access_key = "******************"
    secret_key = "******************"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "*******************"
  cloud_id                 = "b1g9uvtfeu1br8h2gegm"
  folder_id                = "b1g2ut3jveotvs3u28g9"
  zone      = "ru-central1-a"
}
