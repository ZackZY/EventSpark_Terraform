resource "aws_api_gateway_integration_response" "tfer--bqqn2os7e1-002F-axkm4n-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "axkm4n"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'OPTIONS,POST'"
    "method.response.header.Access-Control-Allow-Origin"      = "'http://ecs-frontend-lb-735742951.ap-southeast-1.elb.amazonaws.com'"
  }

  rest_api_id = "bqqn2os7e1"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "tfer--bqqn2os7e1-002F-evfv16-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "evfv16"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'OPTIONS,POST'"
    "method.response.header.Access-Control-Allow-Origin"      = "'http://ecs-frontend-lb-735742951.ap-southeast-1.elb.amazonaws.com'"
  }

  rest_api_id = "bqqn2os7e1"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "tfer--bqqn2os7e1-002F-qvuoww-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "qvuoww"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "method.response.header.Access-Control-Allow-Origin"  = "'http://ecs-frontend-lb-735742951.ap-southeast-1.elb.amazonaws.com'"
  }

  rest_api_id = "bqqn2os7e1"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "tfer--bqqn2os7e1-002F-uy8n5j-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "uy8n5j"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'OPTIONS,POST'"
    "method.response.header.Access-Control-Allow-Origin"      = "'http://ecs-frontend-lb-735742951.ap-southeast-1.elb.amazonaws.com'"
  }

  rest_api_id = "bqqn2os7e1"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "tfer--bqqn2os7e1-002F-vhunuf-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "vhunuf"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "method.response.header.Access-Control-Allow-Origin"  = "'http://ecs-frontend-lb-735742951.ap-southeast-1.elb.amazonaws.com'"
  }

  rest_api_id = "bqqn2os7e1"
  status_code = "200"
}
