require_relative './spec_helper'

describe 'ansible-powershell:default' do

  describe file('/etc/hosts') do
    it { should be_owned_by('root') }
    it { should be_grouped_into 'root' }
    it { should be_mode 644 }
  end

  describe package('powershell') do
    it { should be_installed }
  end

  describe package('azure-cli') do
    it { should be_installed }
  end

  describe package('omi') do
    it { should be_installed }
  end

  describe package('omi-psrp-server') do
    it { should be_installed }
  end

  describe file('/usr/local/share/powershell/Modules/AzureRM.Netcore') do
    it { should be_directory }
    it { should exist }
  end

end
