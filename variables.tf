variable "group_email" {
  description = "(Required) The Group email under which to lookup the Membership names."
  type        = string
}
variable "parent" {
  description = "(Required) The resource name of the entity under which this Group resides in the Cloud Identity resource hierarchy. Must be of the form identitysources/{identity_source_id} for external-identity-mapped groups or customers/{customer_id} for Google Groups."
  type        = string
}
