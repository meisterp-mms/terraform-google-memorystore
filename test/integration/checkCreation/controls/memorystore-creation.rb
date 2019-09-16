# Variables that are needed for executing the test
inspec_vars = JSON.parse(File.read('./test/kitchen.tfvars.json')) # tfvars file with values to be compared
project_id = ENV['TF_VAR_project_id']
name = inspec_vars['name']
region = inspec_vars['region']

# Check if a service-account with the given name was created in the given GCP project
control 'basic-creation-test' do
  describe mms_google_memory_store(project_id: project_id, instance_name: name, region: region) do
    it { should exist }
    its("name") { should include name}
    its("tier") { should eq "BASIC"}
  end
end