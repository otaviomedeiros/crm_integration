require 'active_support'
require 'active_record'
require 'crm_integration'

require 'ruby_zoho'

RubyZoho.configure do |config|
  config.api_key = 'b45751924308154cabece0310eface13'
  config.cache_fields = true
end




