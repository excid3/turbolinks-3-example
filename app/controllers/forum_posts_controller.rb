class ForumPostsController < ApplicationController
  before_action :set_forum_thread

  def create
    @forum_post = @forum_thread.forum_posts.new(forum_post_params)
    if @forum_post.save
      flash[:notice] = "New post submitted"
      redirect_to @forum_thread
    else
      render partial: "form", change: :new_forum_post
    end
  end

  def update
    @forum_post = @forum_thread.forum_posts.find(params[:id])
    @forum_post.update(forum_post_params)
    flash[:notice] = "New post updated"
    redirect_to @forum_thread, change: [:comments]
  end

  private

    def set_forum_thread
      @forum_thread = ForumThread.find(params[:forum_thread_id])
    end

    def forum_post_params
      params.require(:forum_post).permit(:body)
    end
end
