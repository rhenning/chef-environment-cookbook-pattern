require_relative 'spec_helper'

describe service('nginx') do
  it { is_expected.to be_running }
end

describe port(80) do
  it { is_expected.to be_listening.on('0.0.0.0').with('tcp') }
end

describe 'app home page' do
  it 'includes the client name' do
    expect(WebRequest.new(url: 'http://localhost/').get).to include('foobar_ltd')
  end
end
