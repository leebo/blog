module CommentsHelper

  require "digest/md5"
  def toGravatar(email)
     hash = Digest::MD5.hexdigest(email)
     "http://www.gravatar.com/avatar/#{hash}"
  end
end
