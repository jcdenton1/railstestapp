class Geek
  include Mongoid::Document
  field :name, type: String
  field :hobby, type: String
end
