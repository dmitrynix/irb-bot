class Channel
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  validates :name, :presence => true
end
