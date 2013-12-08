class Torrent
  include Mongoid::Document
  field :filename, type: String
end
