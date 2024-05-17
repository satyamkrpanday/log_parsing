variable "grok_pattern" {
  description = "Grok pattern used for parsing log lines"
  type        = string
  default     = "%%{GREEDYDATA} image:'%%{URI:uri}'"
}

variable "log_lines" {
  description = "List of log lines to test the grok pattern"
  type        = string
  default     = "2024-05-16 11:55:24.655333844Z stdout F image:'https://cdn.sanity.io/images/92ui5egz/production/90a76898a1668312aceba404d9860b714210-1920*1080.jpg?rect=1,0,1919,1080&w=750&h=422&fit=crop&auto=format'"
}

variable "log_parsing_rule_name" {
  description = "Name of the log parsing rule"
  type        = string
  default     = "log_parse_rule"
}

variable "attribute" {
  description = "Attribute to parse from the log message"
  type        = string
  default     = "message"
}

variable "enabled" {
  description = "Enable or disable the log parsing rule"
  type        = bool
  default     = true
}

variable "lucene_query" {
  description = "Lucene query for filtering logs"
  type        = string
  default     = "logtype:linux_messages"
}

variable "nrql_query" {
  description = "NRQL query for filtering logs"
  type        = string
  default     = "SELECT * FROM Log WHERE logtype = 'linux_messages'"
}



