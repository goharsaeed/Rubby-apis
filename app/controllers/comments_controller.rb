class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
  
      if @comment.save
        render json: @comment, status: :created
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  