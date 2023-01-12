class UsersController < ApplicationController
  def show
    @user = PostImage.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = PostImage.find(params[:id])
  end

  def update
    @user = PostImage.find(params[:id])
    @user.update(post_image_params)
    redirect_to post_image_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
