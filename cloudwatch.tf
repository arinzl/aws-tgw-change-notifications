#--------------------------------------------------------------------------
#create/delete TGW routes
#--------------------------------------------------------------------------

resource "aws_cloudwatch_event_rule" "tgw_change_detection_createroute" {
  name        = "tgw-change-detection-routecreate"
  description = "Event rule to detect changes in transit gateway route tables - createroute"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["CreateTransitGatewayRoute"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_createroute" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_createroute.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}


resource "aws_cloudwatch_event_rule" "tgw_change_detection_deleteroute" {
  name        = "tgw-change-detection-routedelete"
  description = "Event rule to detect changes in transit gateway route tables - deleteroute"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["DeleteTransitGatewayRoute"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_deleteroute" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_deleteroute.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_enablepropagation" {
  name        = "tgw-change-detection-routepropagation-enable"
  description = "Event rule to detect changes in transit gateway route tables - enablepropagation"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["EnableTransitGatewayRouteTablePropagation"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_enablepropagation" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_enablepropagation.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_disablepropagation" {
  name        = "tgw-change-detection-routepropagation-disable"
  description = "Event rule to detect changes in transit gateway route tables - disablepropagation"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["DisableTransitGatewayRouteTablePropagation"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_disablepropagation" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_disablepropagation.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}


resource "aws_cloudwatch_event_rule" "tgw_change_detection_disassociatetable" {
  name        = "tgw-change-detection-routetabledisassociate"
  description = "Event rule to detect changes in transit gateway route tables - disassociatetable"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {

    "eventName": ["DisassociateTransitGatewayRouteTable"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_disassociatetable" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_disassociatetable.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_associatetable" {
  name        = "tgw-change-detection-routetableassociate"
  description = "Event rule to detect changes in transit gateway route tables - associatetable"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["AssociateTransitGatewayRouteTable"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_associatetable" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_associatetable.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_createtable" {
  name        = "tgw-change-detection-routetablecreate"
  description = "Event rule to detect changes in transit gateway route tables-createtable"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {

    "eventName": ["CreateTransitGatewayRouteTable"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_createtable" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_createtable.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_deletetable" {
  name        = "tgw-change-detection-routetabledelete"
  description = "Event rule to detect changes in transit gateway route tables - deletetable"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["DeleteTransitGatewayRouteTable"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_deletetable" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_deletetable.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

#--------------------------------------------------------------------------
# Create/Delete VpcAttachment
#--------------------------------------------------------------------------
resource "aws_cloudwatch_event_rule" "tgw_change_detection_createvpcattachment" {
  name        = "tgw-change-detection-vpcattachmentcreate"
  description = "Event rule to detect changes in transit gateway route tables - createvpcattachment"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["CreateTransitGatewayVpcAttachment"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_createvpcattachment" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_createvpcattachment.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}

resource "aws_cloudwatch_event_rule" "tgw_change_detection_deletevpcattachment" {
  name        = "tgw-change-detection-vpcattachmentdelete"
  description = "Event rule to detect changes in transit gateway route tables - deletevpcattachment"

  event_pattern = <<PATTERN
{
  "source": ["aws.ec2"],
  "detail-type": ["AWS API Call via CloudTrail"],
  "detail": {
    "eventName": ["DeleteTransitGatewayVpcAttachment"]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns_tgw_change_detection_deletevpcattachment" {
  rule = aws_cloudwatch_event_rule.tgw_change_detection_deletevpcattachment.name
  arn  = aws_sns_topic.tgw_sns_topic.arn
}
