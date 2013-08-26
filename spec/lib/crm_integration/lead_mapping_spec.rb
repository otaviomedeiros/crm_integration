require 'spec_helper'

class RdsToCrmMapping
  include LeadMapping
end

describe LeadMapping do

  let(:rd_lead) { 
    double(
      "rd_lead", 
      first_name: "First name",
      last_name: "Last name",
      company: "Company",
      email: "email@email.com",
      job_title: "Job Title",
      phone: "1234-5678",
      website: "www.google.com"
    ) 
  }
  
  subject { RdsToCrmMapping.new }
  
  it "maps RDS Lead to CRM Lead" do
    subject.map_from(rd_lead).should eq(
      first_name: "First name",
      last_name: "Last name",
      company: "Company",
      email: "email@email.com",
      designation: "Job Title",
      phone: "1234-5678",
      website: "www.google.com"
    )
  end
    
end
