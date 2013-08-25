module CrmCallback
  extend ActiveSupport::Concern
  
  included do
    after_save { p "deu certo" } 
  end
  
end