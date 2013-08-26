require 'spec_helper'

class RDSModel
  include ActiveRecord::Callbacks
  include CrmCallback
end

describe CrmCallback do
  
  subject { RDSModel.new }
  
  context 'when create a rds model' do
    it 'post to crm' do
      CrmLeadRepository.should_receive(:post).with(subject)
      subject.run_callbacks(:create)
    end
  end
  
  context 'when update a rds model' do
    it 'put to crm' do
      CrmLeadRepository.should_receive(:put).with(subject)
      subject.run_callbacks(:update)
    end
  end
  
  context 'when destroy a rds model' do
    it 'delete to crm' do
      CrmLeadRepository.should_receive(:delete).with(subject)
      subject.run_callbacks(:destroy)
    end
  end
end
