require 'spec_helper'

describe CrmLeadRepository do
  
  let(:rd_lead_map) { {last_name: "Last name"} }
  let(:rd_lead) { double("rd_lead", email_was: "email@email.com") }
  let(:crm_lead) { double("crm_lead", save: true, leadid: "1") }
  
  before { 
    CrmLeadRepository.stub(:map_from).with(rd_lead) { rd_lead_map } 
    CrmLeadRepository.stub(:load_crm_lead_by_email).with(rd_lead.email_was) { crm_lead }
    RubyZoho::Crm::Lead.stub(:new).with(rd_lead_map) { crm_lead }
  }
  
  
  describe '.post(rd_lead)' do
    it 'create a crm lead' do
      RubyZoho::Crm::Lead.should_receive(:new).with(last_name: "Last name") 
      CrmLeadRepository.post(rd_lead)
    end
    
    it 'save crm lead' do
      crm_lead.should_receive(:save)
      CrmLeadRepository.post(rd_lead)
    end
  end
  
  describe '.put(rd_lead)' do
    it 'update crm lead' do
      RubyZoho::Crm::Lead.should_receive(:update).with(last_name: "Last name", id: "1")
      CrmLeadRepository.put(rd_lead)
    end
  end
  
  describe '.delete(rd_lead)' do
    it 'delete crm lead' do
      RubyZoho::Crm::Lead.should_receive(:delete).with(crm_lead.leadid)
      CrmLeadRepository.delete(rd_lead)
    end
  end
  
end
