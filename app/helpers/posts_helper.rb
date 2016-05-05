module PostsHelper
  def autor object
    if object.anonimo
    	link_to 'Anônimo', 'javascript:void(0)'
    else
    	link_to object.usuario.name, usuario_path(object.usuario), target: '_blank'
    end
  end
end
