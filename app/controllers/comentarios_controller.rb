class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:update, :destroy]
  before_action :authenticate_usuario!

  def create
    @comentario = Comentario.new comentario_params

    if @comentario.save
      flash[:notice] = 'Comentario adicionado!'
      render :create
    else
      flash.now[:alert] = 'Não foi possível adicionar o comentário'
      render :nothig
    end
  end

  def update
    if @comentario.update comentario_params
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
      flash[:alert] = 'Não foi possível remover o comentário'
      redirect_to :back
    end
  end

  private
  def set_comentario
    @comentario = Comentario.find_by id: params[:id]
  end

  def comentario_params
    params.require(:comentario).permit(:id, :texto, :anonimo, :post_id).merge(usuario_id: current_usuario.id)
  end

end
