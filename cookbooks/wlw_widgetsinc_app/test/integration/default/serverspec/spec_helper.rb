require 'serverspec'
require 'net/http'

set :backend, :exec

class WebRequest
  def initialize(url: 'http://localhost/')
    @uri = URI(url)
  end

  def get
    Net::HTTP.get(@uri)
  end
end
