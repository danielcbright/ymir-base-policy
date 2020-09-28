# InSpec test for recipe ymir-base::default

# Test data bag attributes
input('audit_reporter', value: 'chef-automate')
input('audit_fetcher', value: 'chef-automate')
input('ntp_servers', value: %w(time.google.com time1.google.com time2.google.com time3.google.com time4.google.com automate.dbright.io))

control 'attribute-data-bag-inheritance' do
  title 'Attribute Data Bag Inheritance'
  desc 'Test attribute values should equal what they are expected to equal'
  impact 1.0

  describe json('/tmp/node.json') do
    its(%w(audit reporter)) { should eq input('audit_reporter') }
    its(%w(audit fetcher)) { should eq input('audit_fetcher') }
    its(%w(ntp servers)) { should eq input('ntp_servers') }
  end
end
