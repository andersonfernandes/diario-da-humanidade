class UsuariosController < ApplicationController
  before_action :authenticate_usuario!, except: [:show]

	def show
		@usuario = Usuario.find_by id: params[:id]
		@posts = @usuario.posts.where(anonimo: false)
	end

	def perfil
		@usuario = Usuario.find_by id: current_usuario.id
    @posts = @usuario.posts.reverse
	end
end
