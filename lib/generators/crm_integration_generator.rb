class CrmIntegrationGenerator < Rails::Generators::Base
  def create_initializer_file
    create_file "config/initializers/crm_integration.rb", <<-FILE
      require 'ruby_zoho'

      RubyZoho.configure do |config|
        config.api_key = 'your api key here'
      end
    FILE
  end
end