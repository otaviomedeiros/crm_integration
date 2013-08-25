class CrmLeadRepository
  
  def self.post(rd_lead)
    p "[POST to CRM] #{rd_lead}"
  end
  
  def self.update(rd_lead)
    p "[UPDATE to CRM] #{rd_lead}"
  end
  
  def self.delete(rd_lead)
    p "[DELETE to CRM] #{rd_lead}"
  end
  
end