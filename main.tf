module "network" {
  source = "./modules/tf-yc-network"
}

module "instance" {
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
