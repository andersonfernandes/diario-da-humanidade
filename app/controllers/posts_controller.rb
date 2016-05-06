class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:search, :show]

  def show
    @comentarios = @post.comentarios.order(:created_at).reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      flash[:notice] = 'Post criado com sucesso!'
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'O Post não pôde ser criado'
      render :new
    end
  end

  def edit
    if @post.usuario != current_usuario
      flash[:alert] = 'Você não tem permissão para essa ação!'
      redirect_to perfil_path
    end
  end

  def update
    if @post.update post_params
      flash[:notice] = 'Post atualizado com sucesso!'
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'A Post não pôde ser atualizado'
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:notice] = 'Post removido com sucesso!'
      redirect_to :back
    else
      flash[:alert] = 'O Post não pôde ser removido'
      redirect_to :back
    end
  end

  def search
    @search = params[:search]
    @result = Post.where "lower(titulo) LIKE '%#{@search.downcase}%'"
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
