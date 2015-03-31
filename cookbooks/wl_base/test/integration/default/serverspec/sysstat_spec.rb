require_relative 'spec_helper'

describe package('sysstat') do  
  it { is_expected.to be_installed }
end

describe command('iostat -c 1 1') do
  its(:exit_status) { is_expected.to eq(0) }
end
