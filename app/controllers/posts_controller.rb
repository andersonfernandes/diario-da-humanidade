class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  def index
    @posts = Post.all.where usuario: current_user
  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      flash[:notice] = 'Postagem criada com sucesso!'
      redirect_to :back
    else
      flash.now[:alert] = 'A postagem não pôde ser criada'
      render :new
    end
  end

  def edit

  end

  def update
    if @post.update
      flash[:notice] = 'Postagem atualizada com sucesso!'
      redirect_to :back
    else
      flash.now[:alert] = 'A postagem não pôde ser atualizada'
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:notice] = 'Postagem removida com sucesso!'
      redirect_to :back
    else
      flash[:alert] = 'A postagem não pôde ser removida'
      redirect_to :back
    end
  end

  private
  def set_post
    @post = Post.find_by id: params[:id]
  end

  def post_params
    params.require(:post)
          .permit(:id, :titulo, :texto, :anonimo)
          .merge(usuario_id: current_usuario.id)
  end
end
