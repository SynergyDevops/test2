variable "repository" {
  description = "Synergy Repositories"
  type        = list(string)
  default     = ["test1", "test2", "test3"]
}
variable "organization"{
  name = "SynergyDevops"
}
