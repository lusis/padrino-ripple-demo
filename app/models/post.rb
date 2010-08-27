class Post
  include Ripple::Document
  self.bucket_name = "posts_app_development"

  property :title, String
  property :author, String
  property :body, String
  timestamps!
end
