class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  has_many :posts

  def info
    [first_name, last_name, "(#{email})"].compact.join(' ')
  end
end
