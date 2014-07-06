class UsersController < ApplicationController

  def index
    @users_id = User.all
  end

  def show
    @user_id = User.find_by(id: params[:id])
    @gifs= Gif.where(user_id:@user.id)
  end

  def new
  end

  def create
    @user_id = User.new
    @user_id.name = params[:name]
    @user_id.email = params[:email]
    @gif.user = params['user']
    @user_id= User.find_by(id:@gif.user_id)

    if @user_id.save
      redirect_to "/users/#{ @user_id.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy


    redirect_to "/users"
  end
end
