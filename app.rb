require 'sinatra'
require 'rack/protection'


use Rack::Protection::HostAuthorization, hosts: ['k8s-full-project.onrender.com']

set :bind, '0.0.0.0'
set :port, 4567

get '/' do
  'Host not permitted'
end
