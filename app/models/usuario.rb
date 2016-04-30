class Usuario < ActiveRecord::Base
  devise :database_authenticatable, :registerable
end
