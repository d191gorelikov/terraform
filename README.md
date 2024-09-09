Структура проекта

**.
├── ReadMe.md
├── main.tf
├── modules
│     ├── tf-yc-instance
│    │    ├── ReadMe.md
│    │    ├── main.tf
│    │    ├── outputs.tf
│    │    ├── variables.tf
│    │    └── versions.tf
│    └── tf-yc-network
│         ├── ReadMe.md
│         ├── main.tf
│         ├── outputs.tf
│         ├── variables.tf
│         └── versions.tf
├── outputs.tf
├── provider.tf
├── variables.tf
└── versions.tf**

**В проекте существует три модуля:**
- Основной модуль (корневой)
- Модуль tf-yc-instance - Этот модуль Terraform создает виртуальную машину в Yandex Cloud с указанной конфигурацией. (подробнее можно узнать в ReadMe.md в каталоге самого модуля)
- Модуль tf-yc-network - Этот модуль Terraform выводит информацию о сети и подсети в Yandex Cloud. (подробнее можно узнать в ReadMe.md в каталоге самого модуля)

Проверка работоспособности:
terraform init:
![image](https://github.com/user-attachments/assets/2f48193c-c6a0-4c1e-9703-49b8ae779400)

terraform validate:
![image](https://github.com/user-attachments/assets/3543e69c-e69c-4fbb-8f6d-72ae68c20653)

terraform plan:
![image](https://github.com/user-attachments/assets/25620a10-c840-4171-aea0-ae41b52f5205)

terraform apply:
![image](https://github.com/user-attachments/assets/bf26a78b-7251-4f5d-ba96-0345f001a615)

Outputs:
![image](https://github.com/user-attachments/assets/4ec45f96-cfda-4990-8bae-ac109e87c2c8)
