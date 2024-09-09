## Модуль Yandex Cloud Compute Instance

Этот модуль Terraform создает виртуальную машину в Yandex Cloud с указанной конфигурацией.

## Зависимости

- Провайдер Yandex Cloud версии 0.87.0 или выше

## Провайдер

- yandex-cloud/yandex

## Входные параметры

| Имя | Описание | Тип | 
|------|-------------|------|
| `name` | Имя виртуальной машины в Yandex Cloud | `string` |
| `zone` | Зона Yandex Cloud | `string` |
| `platform_id` | ID платформы Yandex Cloud | `string` |
| `cores` | Количество ядер CPU для виртуальной машины | `number` |
| `memory` | Объем RAM для виртуальной машины (в ГБ) | `number` |
| `image_id` | ID образа диска загрузки | `string` | 
| `subnet_id` | ID подсети для виртуальной машины | `string` |
| `size` | Размер диска виртуальной машины (в ГБ) | `number` |

## Выходные параметры

- `ip_address`: Частный IP-адрес виртуальной машины
- `external_ip`: Публичный IP-адрес виртуальной машины
- `zone`: Зона доступности виртуальной машины (Нужен для вывода instance_subnet_id )

## Модуль


```module "instance" {
  source = "./modules/tf-yc-instance"
  name = "terraform-std-ext-007-22"
  zone = var.zone
  platform_id = "standard-v1"
  cores = 2
  memory= 2
  image_id=var.image_id
  size= 30
  subnet_id=var.subnet_id
}
```

## Ресурс

```

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
```

## Структура модуля

- `main.tf`:
  - Определяет ресурс `yandex_compute_instance` для создания виртуальной машины.
  - Использует данные из файла `user-data` для настройки виртуальной машины.
  - Задает параметры виртуальной машины, такие как имя, зона, платформа, ресурсы (ядра, память), диск загрузки и сетевой интерфейс.

- `outputs.tf`:
  - Определяет выходные параметры модуля (описаны выше)

- `variables.tf`:
  - Определяет входные параметры модуля (описаны в Входные параметры)


- `versions.tf`:
  - Определяет требуемую версию провайдера Yandex Cloud.

- `user-data.yaml`:
  - Содержит скрипт или конфигурацию, которая будет применена к виртуальной машине при ее создании.


Это создаст виртуальную машину в Yandex Cloud с указанной конфигурацией и выведет ее IP-адреса и зону доступности.
