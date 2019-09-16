resource "google_redis_instance" "memorystore" {
  project        = "${var.project_id}"
  name           = "${var.name}"
  tier           = "${var.tier}"
  memory_size_gb = "${var.memory_size_gb}"

  location_id             = "${var.location_id}"
  alternative_location_id = "${var.alternative_location_id}"

  authorized_network = "${var.authorized_network}"

  redis_version     = "${var.redis_version}"
  display_name      = "Terraform Test Instance"
}