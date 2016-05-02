# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string           not null
#  texto      :text             not null
#  anonimo    :boolean          default("f")
#  usuario_id :integer
#

class Post < ActiveRecord::Base
	belongs_to :usuario, class_name: 'Usuario', foreign_key: 'usuario_id'
	has_many :comentarios, class_name: 'Usuario', foreign_key: 'post_id'

  validates_presence_of :titulo, :texto, :usuario
end
