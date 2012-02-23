class Message
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :nick
  field :message
  field :channel
end
