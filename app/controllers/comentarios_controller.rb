class ComentariosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @comentarios = Comentario.all.where usuario: current_user
  end

  def show
  end

  def new
    @comentario = Comentario.new
  end

  def create
    @comentario = Comentario.new comentario_params

    if @comentario.save
      flash[:notice] = 'Comentario adicionado!'
      redirect_to :back
    else
      flash.now[:alert] = 'Não foi possível adicionar o comentário'
      render :new
    end
  end

  def edit
  end


  def update
    if @comentario.update
      flash[:notice] = 'Comentario modificado!'
      redirect_to :back
    else
      flash.now[:alert] = 'Não foi possivel modificar o comentário!'
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:notice] = 'Comentário removido!'
      redirect_to :back
    else
      flash[alert:] = 'Não foi possível remover o comentário'
      redirect_to :back
    end
  end

  private
  def set_comentario
    @comentario = Comentario.find_by id: params[:id]
  end
  
  def post_params
    params.require(:comentario).permit(:id, :texto, :anonimo).merge(usuario_id: current_usuario.id)
  end

end
