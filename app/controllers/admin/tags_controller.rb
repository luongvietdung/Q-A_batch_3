class Admin::TagsController < Admin::BaseController
  before_action :current_tags, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = current_user.tags.new
  end

  def create
    @tag = current_user.tags.create(tag_params)
    if @tag.save
      flash[:success] = "Tag create successfully!!!"
      redirect_to admin_tags_path
    else
      flash[:errors] = @tag.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      flash[:success] = "Update successfully!!!"
      redirect_to admin_tags_path
    else
      flash[:errors] = @tag.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @tag.destroy
      flash[:success] = "Destroy successfully!!!"
      redirect_to admin_tags_path
    else
      flash[:errors] = @tag.errors.full_messages
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def current_tags
    @tag = Tag.find(params[:id])
  end
end
