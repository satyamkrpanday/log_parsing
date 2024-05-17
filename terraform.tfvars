grok_pattern          = "%%image:'%%{URI:uri}'"
log_lines             = "2024-05-16 11:55:24.655333844Z stdout F image:'https://cdn.sanity.io/images/92ui5egz/production/90a76898a1668312aceba404d9860b714210-1920*1080.jpg?rect=1,0,1919,1080&w=750&h=422&fit=crop&auto=format'"
log_parsing_rule_name = "log_parse_rule"
attribute             = "message"
enabled               = true
lucene_query          = "logtype:linux_messages"
nrql_query            = "SELECT * FROM Log WHERE logtype = 'linux_messages'"
