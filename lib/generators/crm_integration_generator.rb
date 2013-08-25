class CrmIntegrationGenerator < Rails::Generators::Base
  def create_initializer_file
    create_file "config/initializers/crm_integration.rb", <<-FILE
      require 'ruby_zoho'

      RubyZoho.configure do |config|
        config.api_key = 'b45751924308154cabece0310eface13'
      end
    FILE
  end
end