class Usuario < ActiveRecord::Base
  devise :database_authenticatable, :registerable
  has_many :posts
  has_many :comments
end
