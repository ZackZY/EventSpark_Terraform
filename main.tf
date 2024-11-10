module "api_gateway" {
  source = "./api_gateway"
}

module "alb" {
  source = "./alb"
}

module "ecs" {
  source = "./ecs"
}

module "s3" {
  source = "./s3"
}

module "route_table" {
  source = "./route_table"
}
