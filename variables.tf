variable "cloud_id" {
  type        = string
  default     = "b1g3jddf4nv5e9okle7p"
}

variable "folder_id" {
  type        = string
  default     = "b1g3067qnkqdtv3iccfp"
}

variable "name" {
  description = "Name of the Yandex Cloud instance"
  type        = string
  default     = "terraform-std-ext-007-22"
}

variable "zone" {
  description = "Yandex Cloud zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Yandex Cloud platform ID"
  type        = string
  default     = "standard-v1"
}


variable "image_id" {
  description = "ID of the boot disk image"
  type        = string
  default     = "fd89k85hm37bk6bfrtd2"
}

variable "subnet_id" {
  description = "ID of the subnet for the instance"
  type        = string
  default     = "e9bvk7vlbhb9bt3tj20r"
}



