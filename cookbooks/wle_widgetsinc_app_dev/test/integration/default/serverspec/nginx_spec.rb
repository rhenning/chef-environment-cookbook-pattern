require_relative 'spec_helper'

describe file('/etc/nginx/nginx.conf') do
  its(:content) { is_expected.to match(/gzip.+off/) }
end
