require_relative 'spec_helper'

describe file('/etc/motd') do
  it { is_expected.to contain('widgetsinc') }
end
