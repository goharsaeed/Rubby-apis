class PostsController < ApplicationController
    before_action :set_post, only: [:show]
    before_action :authenticate_user, only: [:create]
  
    def index
      # Use Kaminari to paginate posts
      @posts = Post.page(params[:page]).per(10)
      render json: @posts, meta: pagination_meta(@posts)
    end
  
    def show
      render json: @post
    end
  
    def create
      @post = Post.new(post_params)
      @post.user = @current_user
  
      if @post.save
        render json: @post, status: :created
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  
    def authenticate_user
      token = request.headers['Authorization']
      @current_user = User.find_by(auth_token: token)
  
      render json: { error: 'Unauthorized' }, status: :unauthorized unless @current_user
    end
  
    # Helper method to include pagination metadata
    def pagination_meta(posts)
      {
        current_page: posts.current_page,
        next_page: posts.next_page,
        prev_page: posts.prev_page,
        total_pages: posts.total_pages,
        total_count: posts.total_count
      }
    end
  end
  