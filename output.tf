output "host" {
  description = "Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service"
  value       = "${google_redis_instance.memorystore.host}"
}

output "port" {
  description = "Port of the redis service"
  value       = "${google_redis_instance.memorystore.port}"
}

output "create_time" {
  description = "create time of the service"
  value       = "${google_redis_instance.memorystore.create_time}"
}

output "current_location_id" {
  description = "ID of the current location of the service"
  value       = "${google_redis_instance.memorystore.current_location_id}"
}