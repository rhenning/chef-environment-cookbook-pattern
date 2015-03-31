require_relative 'spec_helper'

describe service('ntpd') do
  it { is_expected.to be_running }
end
