class CrmLeadRepository
  extend LeadMapping
  
  def self.post(rd_lead)
    crm_lead = RubyZoho::Crm::Lead.new(map_from(rd_lead))
    crm_lead.save
  end
  
  def self.put(rd_lead)
    crm_lead = load_crm_lead_by_email(rd_lead.email_was)
    RubyZoho::Crm::Lead.update(map_from(rd_lead).merge(:id => crm_lead.leadid))
  end
  
  def self.delete(rd_lead)
    crm_lead = load_crm_lead_by_email(rd_lead.email_was)
    RubyZoho::Crm::Lead.delete(crm_lead.leadid)
  end
  
  def self.load_crm_lead_by_email(email)
    leads = RubyZoho::Crm::Lead.find_by_email(email)
    leads && !leads.empty? ? leads.first : nil
  end
end