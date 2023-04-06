# Example, compulsory input variable
variable "group_email" {
  description = "Group ID"
  type        = string
  default     = "snowflake-users@getindata.com"
}
variable "parent" {
  description = "Parent group ID"
  type        = string
  default     = "customers/C03qgsz5q"
}
