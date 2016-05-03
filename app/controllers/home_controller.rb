class HomeController < ApplicationController
  def index
  	@posts = Post.all.order(:created_at).limit(5).reverse
  end
end
