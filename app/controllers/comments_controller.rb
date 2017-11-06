class CommentsController < ApplicationController
  before_action :set_comments
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET blogs/1/comments
  def index
    @comments = @blogs.comments
  end

  # GET blogs/1/comments/1
  def show
  end

  # GET blogs/1/comments/new
  def new
    @comment = @blogs.comments.build
  end

  # GET blogs/1/comments/1/edit
  def edit
  end

  # POST blogs/1/comments
  def create
    @comment = @blogs.comments.build(comment_params)

    if @comment.save
      redirect_to([@comment.blogs, @comment], notice: 'Comment was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT blogs/1/comments/1
  def update
    if @comment.update_attributes(comment_params)
      redirect_to([@comment.blogs, @comment], notice: 'Comment was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE blogs/1/comments/1
  def destroy
    @comment.destroy

    redirect_to blogs_comments_url(@blogs)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comments
      @blogs = Blog.find(params[:blogs_id])
    end

    def set_comment
      @comment = @blogs.comments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
