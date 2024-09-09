variable "network_zones" {
  description = "List of zones for subnets"
   type        = set(string)
   default     = ["ru-central1-a", "ru-central1-b", "ru-central1-c", "ru-central1-d"  ]
}
