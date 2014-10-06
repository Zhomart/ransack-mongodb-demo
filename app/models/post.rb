class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :body, type: String
  field :rating, type: Float, default: 0

  belongs_to :user

  def user_info
    user ? user.info : nil
  end
end
