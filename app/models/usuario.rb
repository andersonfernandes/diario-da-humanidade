# == Schema Information
#
# Table name: usuarios
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#

class Usuario < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :posts, class_name: 'Post', foreign_key: 'usuario_id'
  has_many :comentarios, class_name: 'Post', foreign_key: 'usuario_id'

  validates_presence_of :name, :email, :password, :password_confirmation
end
