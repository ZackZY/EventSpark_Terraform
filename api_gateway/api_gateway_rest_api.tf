resource "aws_api_gateway_rest_api" "tfer--bqqn2os7e1_eventspark-microservice-stg" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "1024"
  name                     = "eventspark-microservice-stg"

  tags = {
    STAGE = "stg"
  }

  tags_all = {
    STAGE = "stg"
  }
}
