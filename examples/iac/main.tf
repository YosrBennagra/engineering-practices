terraform {
  required_version = ">= 1.6.0"
}

variable "service_name" {
  type = string
}

variable "environment" {
  type = string
}

# Provider-neutral on purpose.
# Real modules should encode organization defaults for networking, identity,
# encryption, metadata, logging and safe deletion.
