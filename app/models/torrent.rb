class Torrent
  include Mongoid::Document
  include Mongoid::Timestamps

  field :filename, type: String
end
