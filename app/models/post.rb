class Post
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  include Redis::Objects
  counter :comments_count
  counter :read_count
  field :title, type: String
  field :content, type: String
  has_many :comments
end
