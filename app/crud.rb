require 'erb'
require_relative 'controllers/entities_controller'
require_relative 'models/entity'

class Crud
  attr_reader :request

  def call(env)
    @request = Rack::Request.new(env)
    response_body, response_code = handle_request
    [response_code || 200, {"Content-Type" => "text/html"}, [response_body.to_s]]
  end

  private

  def handle_request
    entities = EntitiesController.new(request)

    if match_route?('GET', /^\/$/)
      entities.index
    elsif match_route?('GET', /^\/\d+$/)
      entities.show
    elsif match_route?('GET', /^\/new$/)
      entities.new
    elsif match_route?('POST', /^\/create$/)
      entities.create
    else
      ['Page not found', 404]
    end
  end

  def match_route?(http_method, path)
    request.request_method == http_method && request.path_info =~ path
  end
end
