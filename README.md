# Zoho CRM Integration 

Zoho CRM integration is a simple gem where you can post, put and delete Leads to Zoho CRM. It uses [rubyzoho](https://github.com/amalc/rubyzoho) to abstract Zoho CRM access.

## Using with Rails

To use Zoho CRM integration with Rails, simply add it to your `Gemfile`:

```ruby
gem 'crm_integration'
```

Install by running:

```ruby
bundle install
```


After you install Zoho CRM integration and add it to your Gemfile, you need to run the generator:

```ruby
rails generate crm_integration
```

It generates an initializer where you configure it with your Zoho CRM Authentication Token (https://www.zoho.com/crm/help/api/using-authentication-token.html).



```ruby
# /initializers/crm_integration.rb
require 'ruby_zoho'

RubyZoho.configure do |config|
  config.api_key = '<< API Key from Zoho>>'
end
```

Now you can use Zoho CRM integration to post, put and delete your Lead to Zoho simply by including CrmCallback module on it.

```ruby
class Lead < ActiveRecord::Base
  
  include CrmCallback

end
```
