require_relative 'spec_helper'

describe 'app home page' do
  it 'includes the client name' do
    expect(WebRequest.new(url: 'http://localhost/').get).to include('widgetsinc')
  end
end
