## Модуль Yandex Cloud Network

Этот модуль Terraform выводит информацию о сети и подсети в Yandex Cloud.

## Зависимости

- Провайдер Yandex Cloud версии 0.87.0 или выше

## Провайдер

- yandex-cloud/yandex

## Входные параметры

| Имя | Описание | Тип | Дефолтное значение |
|------|-------------|------|---------|
| `network_zones` | Список зон для подсетей | `set(string)` | ["ru-central1-a", "ru-central1-b", "ru-central1-c", "ru-central1-d"] |

## Выходные параметры

- `subnet_ids`: Информация о подсети, содержащий следующие ключи:
  - `zone`: Зона подсети
  - `subnet_id`: Идентификатор подсети
  - `folder_id`: Идентификатор папки, в которой находится подсеть
  - `id`: Идентификатор подсети
  - `v4_cidr_blocks`: IPv4 для подсети

## Модуль

```
module "network" {
  source = "./modules/tf-yc-network"
}
```

## DataSource

```
data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
   for_each = var.network_zones
   name = "${data.yandex_vpc_network.default.name}-${each.key}"

}
```


Этот даст инфорамцию о сети и подсети. Выходной параметр `subnet_ids` будет содержать информацию о подсети.

## Структура модуля

- `main.tf`: Определяет ресурсы данных для сети и подсетей.
- `outputs.tf`: Определяет выходной параметр `subnet_ids`, который возвращает информацию о подсети.
- `variables.tf`: Определяет входной параметр `network_zones` для списка зон подсетей.
- `versions.tf`: Определяет требуемую версию провайдера Yandex Cloud.