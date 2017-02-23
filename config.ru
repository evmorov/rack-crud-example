require 'warden'

use Rack::Session::Cookie, secret: 'MY_SECRET'

failure_app = proc { |env| ['401', { 'Content-Type' => 'text/html' }, ['UNAUTHORIZED']] }

use Warden::Manager do |manager|
  manager.default_strategies :password, :basic
  manager.failure_app = failure_app
end

run proc { |env| ['200', { 'Content-Type' => 'text/html' }, ['get rack\'d']] }
