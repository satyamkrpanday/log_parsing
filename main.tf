data "newrelic_test_grok_pattern" "grok" {
  grok      = var.grok_pattern
  log_lines = toset([var.log_lines])
}

resource "newrelic_log_parsing_rule" "foo" {
  name      = var.log_parsing_rule_name
  attribute = var.attribute
  enabled   = var.enabled
  grok      = data.newrelic_test_grok_pattern.grok.grok
  lucene    = var.lucene_query
  nrql      = var.nrql_query
  matched   = data.newrelic_test_grok_pattern.grok.test_grok[0].matched
}
