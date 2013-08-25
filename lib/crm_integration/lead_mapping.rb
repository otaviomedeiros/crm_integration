module LeadMapping
  
  def map_from(rd_lead)
    {
      first_name: rd_lead.first_name,
      last_name: rd_lead.last_name,
      company: rd_lead.company,
      email: rd_lead.email,
      job_title: rd_lead.job_title,
      phone: rd_lead.phone,
      website: rd_lead.website
    }
  end
  
end