# # encoding: utf-8

# Inspec test for recipe meal::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

case os.family
when 'redhat', 'centos'
  describe package('httpd') do
    it { should be_installed }
  end
when 'ubuntu', 'debian'
  describe package('apache2') do
    it { should be_installed }
  end
end
