require_relative 'spec_helper'

describe package('tcpdump') do  
  it { is_expected.to be_installed }
end

describe command('tcpdump -D') do
  its(:exit_status) { is_expected.to eq(0) }
end
