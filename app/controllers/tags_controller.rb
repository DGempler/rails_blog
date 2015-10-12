class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end
  def new
    @tag = Tag.new
  end
  def create
    @tag = Tag.new tag_params
    if @tag.save
      redirect_to @tag
    else
      flash.now[:alert] = "There was a problem saving your tag"
      render :new
    end
  end
  def show
    @tag = tag
  end
  def edit
    @tag = tag
  end
  def update
    tag.update_attributes tag_params
    if tag.save
      redirect_to tag
    else
      flash.now[:alert] = "There was a problem saving your tag"
      render :edit
    end
  end
  def destroy
    tag.destroy
    redirect_to :root, notice: "Your tag was deleted"
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
  def tag
    @tag ||= Tag.find(params[:id])
  end
end