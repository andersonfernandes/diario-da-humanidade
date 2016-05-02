class Post < ActiveRecord::Base
	belongs_to :usuario
	has_many :comments
end