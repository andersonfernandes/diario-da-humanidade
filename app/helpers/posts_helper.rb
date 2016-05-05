module PostsHelper
  def autor post
    if post.anonimo
    	'Anônimo'
    else
    	link_to post.usuario.name, usuario_path(post.usuario), target: '_blank'
    end
  end
end
