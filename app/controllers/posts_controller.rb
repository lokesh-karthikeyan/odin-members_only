class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new = (@post = Post.new)

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path, success: "Post was successfully created."
    else
      flash[:error] = "An error occured!"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params = params.expect(:post, [ :title, :content ])
end
