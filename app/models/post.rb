class Post < ActiveRecord::Base
	belongs_to :usuario
	has_many :comentarios
end
