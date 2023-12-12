resource "aws_api_gateway_method" "this" {
  rest_api_id        = var.rest_api_id
  resource_id        = var.resource_id
  http_method        = var.http_method
  authorization      = var.authorization
  authorizer_id      = var.authorizer_id
  request_parameters = var.request_parameters
}

resource "aws_api_gateway_integration" "this" {
  for_each                = var.integrations
  rest_api_id             = var.rest_api_id
  resource_id             = var.resource_id
  http_method             = var.http_method
  integration_http_method = each.key
  type                    = each.value.type
  uri                     = each.value.uri
  request_parameters      = each.value.request_parameters
  connection_type         = each.value.connection_type
  connection_id           = each.value.connection_id
}