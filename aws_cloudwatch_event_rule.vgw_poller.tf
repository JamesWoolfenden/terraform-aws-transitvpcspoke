resource "aws_cloudwatch_event_rule" "vgw_poller_event" {
  name                = var.event_rule_name
  description         = "Transit VPC: Rule to trigger VGW-Poller every minute to find VGWs that need to be attached to the transit VPC."
  schedule_expression = "rate(1 minute)"
  is_enabled          = var.poller_enabled
}
