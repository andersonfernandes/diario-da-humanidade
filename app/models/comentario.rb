# == Schema Information
#
# Table name: comentarios
#
#  id         :integer          not null, primary key
#  texto      :string           not null
#  anonimo    :boolean          default("false")
#  usuario_id :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comentario < ActiveRecord::Base
	belongs_to :usuario, class_name: 'Usuario', foreign_key: 'usuario_id'
	belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  validates_presence_of :texto, :usuario, :post

  def nome_usuario
  	self.usuario.name
  end
end
