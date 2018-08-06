class MainPagesController < ApplicationController

  def index
    @featured_post = Post.offset(rand(Post.count)).first
    @most_recent_post = Post.order('created_at desc').first
  end

end
