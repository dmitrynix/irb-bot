require 'spec_helper'

describe Bot::Application do
  context 'Get /' do
    it 'should be ok' do
      get '/'
      last_response.status.should be(200)
    end

    it 'should be ok' do
      Message.create :nick => 'dmitrynix', :message => 'Testing'
      get '/'
      last_response.body.should match 'dmitrynix] Testing'
    end
  end
end
