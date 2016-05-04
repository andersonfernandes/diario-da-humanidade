module PostsHelper
  def autor_do_post post
    if post.anonimo
      'Anônimo'
    else
      post.usuario.name
    end
  end
end
