variable "allow_external_principals" {
  description = "Whether or not to allow principals from outside your organization to participate in this share"
  type        = bool
  default     = false
}

variable "associated_principals" {
  description = "Principals (arns) to associate with this share, granting them access to the associated resources"
  type        = list(string)
  default     = []
}

variable "associated_resources" {
  description = "Resources (arns) to associate with this share, making them accessible to the associated principals"
  type        = list(string)
  default     = []
}

variable "name" {
  description = "A name to assign to this resource share"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource share"
  type        = map(string)
  default     = {}
}
