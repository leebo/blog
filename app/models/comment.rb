class Comment
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :nickname, type: String
  field :email, type: String
  field :message, type: String
  belongs_to :post

end
