class Post
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :title, type: String
  field :content, type: String
  has_many :comments
end
