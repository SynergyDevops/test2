variable "repository" {
  description = "Synergy Repositories"
  type        = map(object({
    default     = ["test1", "test2", "test3"]
  }))
}
