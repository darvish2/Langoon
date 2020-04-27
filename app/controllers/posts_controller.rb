class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


def english
end
















  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

  end

  # GET /posts/new
  def new
    @post = Post.new
    #@post.uploadfiles.build
    # binding.pry
  end




def edit
    @post = Post.find(params[:id])
end

def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to members_postmember_path
end



  # POST /posts
  # POST /posts.json
  def create
    @post = current_member.posts.new(post_params)
    if @post.save

      redirect_to members_postmember_path
    else

      redirect_to root_path
    end
    # respond_to do |format|
    #   if @post.save
    #     #format.html { redirect_to @post, notice: 'Post was successfully created.' }
    #     format.html { redirect_to members_postmember_path, notice: 'Post was successfully created.' }
    #     format.json { render :show, status: :created, location: @post }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to members_postmember_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :languagename_id, :learning_genre, :post_content,
      images_attributes: [:id, :uploadfile, :_destroy])
    end
end
