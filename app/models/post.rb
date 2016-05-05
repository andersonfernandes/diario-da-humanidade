# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string           not null
#  texto      :text             not null
#  anonimo    :boolean          default("false")
#  usuario_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
	belongs_to :usuario, class_name: 'Usuario', foreign_key: 'usuario_id'
	has_many :comentarios, class_name: 'Usuario', foreign_key: 'post_id'

  validates_presence_of :titulo, :texto, :usuario

  def nome_do_usuario
  	if self.anonimo
      'Anônimo'
    else
      self.usuario.name
    end
  end
end
