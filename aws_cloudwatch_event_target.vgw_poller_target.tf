resource "aws_cloudwatch_event_target" "vgw_poller_event_target" {
  rule = aws_cloudwatch_event_rule.vgw_poller_event.name
  arn  = aws_lambda_function.vgw_poller.arn
}
