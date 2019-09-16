variable "project_id" {
  description = "Project ID"
  type        = "string"
}

variable "name" {
  description = "Instance name"
  type        = "string"
}

variable "tier" {
  description = "Service tier of the instance"
  type        = "string"
  default     = "BASIC"
}

variable "authorized_network" {
  description = "GCE network name"
  type        = "string"
  default     = "BASIC"
}

variable "memory_size_gb" {
  description = "redis memory size in GB"
  type        = "string"
  default     = "BASIC"
}

variable "location_id" {
  description = "the zone where the service will be provisioned"
  type        = "string"
  default     = "BASIC"
}

variable "alternative_location_id" {
  description = "alternative zone"
  type        = "string"
  default     = "BASIC"
}

variable "redis_version" {
  description = "redis version"
  type        = "string"
  default     = "REDIS_4_0"
}