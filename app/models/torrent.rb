class Torrent
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :filename, type: String
end
