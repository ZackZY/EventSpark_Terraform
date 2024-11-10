resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-axkm4n-002F-OPTIONS" {
  cache_namespace      = "axkm4n"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "axkm4n"
  rest_api_id          = "bqqn2os7e1"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-axkm4n-002F-POST" {
  cache_namespace         = "axkm4n"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "axkm4n"
  rest_api_id             = "bqqn2os7e1"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:381491878469:function:eventspark-microservice-stg-verify/invocations"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-evfv16-002F-OPTIONS" {
  cache_namespace      = "evfv16"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "evfv16"
  rest_api_id          = "bqqn2os7e1"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-evfv16-002F-POST" {
  cache_namespace         = "evfv16"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "evfv16"
  rest_api_id             = "bqqn2os7e1"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:381491878469:function:eventspark-microservice-stg-qrcheckin/invocations"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-qvuoww-002F-OPTIONS" {
  cache_namespace      = "qvuoww"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "qvuoww"
  rest_api_id          = "bqqn2os7e1"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-qvuoww-002F-POST" {
  cache_namespace         = "qvuoww"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "qvuoww"
  rest_api_id             = "bqqn2os7e1"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:381491878469:function:eventspark-microservice-stg-register/invocations"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-uy8n5j-002F-OPTIONS" {
  cache_namespace      = "uy8n5j"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "uy8n5j"
  rest_api_id          = "bqqn2os7e1"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-uy8n5j-002F-POST" {
  cache_namespace         = "uy8n5j"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "uy8n5j"
  rest_api_id             = "bqqn2os7e1"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:381491878469:function:eventspark-microservice-stg-login/invocations"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-vhunuf-002F-OPTIONS" {
  cache_namespace      = "vhunuf"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "vhunuf"
  rest_api_id          = "bqqn2os7e1"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--bqqn2os7e1-002F-vhunuf-002F-POST" {
  cache_namespace         = "vhunuf"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "vhunuf"
  rest_api_id             = "bqqn2os7e1"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:381491878469:function:eventspark-microservice-stg-logout/invocations"
}
