class UsuariosController < ApplicationController
  	before_action :authenticate_usuario!

	def perfil
		@usuario = Usuario.find_by id: current_usuario.id
    @posts = @usuario.posts.reverse
	end
end
