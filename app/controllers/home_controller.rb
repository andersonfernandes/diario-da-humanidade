class HomeController < ApplicationController
  def index
  	@posts = Post.all.order('created_at desc').limit(6)
  end
end
