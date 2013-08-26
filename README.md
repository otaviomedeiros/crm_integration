# Zoho CRM Integration 

Zoho CRM integration is a simple gem where you can post, put and delete Leads to Zoho CRM.

## Using with Rails

To use Zoho CRM integration with Rails, simply add crm_integration to your Gemfile and run bundle install.

After you install Zoho CRM integration and add it to your Gemfile, you need to run the generator:

rails generate crm_integration

It generates a initializer and you must configure it with your Zoho CRM Authentication Token (https://www.zoho.com/crm/help/api/using-authentication-token.html).


/initializers/crm_integration.rb
require 'ruby_zoho'

RubyZoho.configure do |config|
  config.api_key = '<< API Key from Zoho>>'
end

Now you can use Zoho CRM integration to post, put and delete your Lead to Zoho simply by including CrmCallback module on it.

class Lead < ActiveRecord::Base
  
  include CrmCallback

end

