module CrmCallback
  extend ActiveSupport::Concern
  
  included do
    after_create { CrmLeadRepository.post(self) } 
    after_update { CrmLeadRepository.put(self) } 
    after_destroy { CrmLeadRepository.delete(self) }
  end
  
end