Gem::Specification.new do |s|
  s.name        = 'crm_integration'
  s.version     = '0.0.0'
  s.date        = '2013-08-24'
  s.summary     = "RD CRM Integration"
  s.description = "A simple CRM integration for test"
  s.authors     = ["Otavio Medeiros"]
  s.email       = 'otaviorm@gmail.com'
  s.files       = ["lib/crm_integration.rb", "lib/crm_integration/crm_callback.rb"]
  s.homepage    = 'http://rubygems.org/gems/crm_integration'
  s.license     = 'MIT'
  
  s.add_runtime_dependency 'activesupport', '3.2.13'
end