Gem::Specification.new do |s|
  s.name        = 'crm_integration'
  s.version     = '0.0.3'
  s.date        = '2013-08-24'
  s.summary     = "RD CRM Integration"
  s.description = "A simple CRM integration for test"
  s.authors     = ["Otavio Medeiros"]
  s.email       = 'otaviorm@gmail.com'
  s.files       = [
    "lib/crm_integration.rb", 
    "lib/crm_integration/crm_callback.rb",
    "lib/crm_integration/crm_lead_repository.rb",
    "lib/crm_integration/lead_mapping.rb",
    "lib/generators/crm_integration_generator.rb"
  ]
  s.homepage    = 'http://rubygems.org/gems/crm_integration'
  s.license     = 'MIT'
  
  s.add_dependency 'activesupport', '3.2.13'
  s.add_dependency 'rubyzoho', '0.1.7'
end