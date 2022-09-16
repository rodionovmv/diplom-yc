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
    access_key = "YCAJEs-JJOVplkQXbm4M27X_h"
    secret_key = "YCP9EVBrxVVDZe7E90ARYzQYhowgPqWnQaJBi8UD"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "AQAAAAAG9CmyAATuwZmrFR7dikuzooNM1Tuv7no"
  cloud_id                 = "b1g9uvtfeu1br8h2gegm"
  folder_id                = "b1g2ut3jveotvs3u28g9"
  zone      = "ru-central1-a"
}
