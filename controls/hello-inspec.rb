# encoding: utf-8
# copyright: 2017, The Authors

title 'Hello InSpec'

control 'hello-inspec-1.0' do
  impact 2.0
  title 'Create a /tmp/hello-inspec.txt file'
  desc 'An optional description'
  describe file('/tmp/hello-inspec.txt') do
    it { should be_file }
    its ('content') { should match 'hello [a-z]{1,5}' }
  end
end
