variable "name" {
  description = "Name of the Yandex Cloud instance"
  type        = string
}

variable "zone" {
  description = "Yandex Cloud zone"
  type        = string
}

variable "platform_id" {
  description = "Yandex Cloud platform ID"
  type        = string
}

variable "cores" {
  description = "Number of CPU cores for the instance"
  type        = number
}

variable "memory" {
  description = "Amount of RAM for the instance (in GB)"
  type        = number
}

variable "image_id" {
  description = "ID of the boot disk image"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the instance"
  type        = string
}

variable "size" {
  description = "Size of the instance's disk (in GB)"
  type        = number
}
